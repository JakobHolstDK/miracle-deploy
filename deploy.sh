#!/usr/bin/env bash


export FQDN="${HOSTNAME}.openknowit.com"
export KALM_SILENCE="true"

DEPLOY=$(kalm_netbox netboxdata |grep -v  "initialize end" | jq '.virtual_machines[] | select (.cluster == env.FQDN)')

virsh list >/tmp/active.list
virsh list --inactive >/tmp/inactive.list

for vm in $(echo $DEPLOY |jq '.name ' -r )
do
	name=$(echo $vm | sed 's/.openknowit.com//')
	grep $name /tmp/inactive.list
	if [[ $? == 0 ]];
	then
		echo "servers is inactive"
		virsh start $name
 	else	
		grep $name /tmp/active.list
		if [[ $? == 0 ]];
		then
			echo "servers is active"
		else
			echo "server is missing"
			echo $DEPLOY |jq --arg vm "$vm"  '. | select(.name == $vm)	' > /tmp/server.json
			DISK=$(cat /tmp/server.json | jq .disk_gb -r )
			CPU=$(cat /tmp/server.json | jq .cpu -r )
			MEM=$(cat /tmp/server.json | jq .memory_mb -r )
			cat /tmp/server.json
			REL=$(cat /tmp/server.json | jq .local_context_data.os.operating_system -r )
			echo $REL
			if [[ $REL == "win2022" ]];
			then
				echo "deploying a windows 2022 server"
				MYREL=$(ls -1 /var/lib/libvirt/images/iso | grep $REL |sort -n |tail -1 | awk -F'.iso' '{ print $1 }')
				echo $MYREL
				virt-install --name $name \
					     --import \
					     --graphics=vnc,password=mypasswd,listen=0.0.0.0,port=6534 \
                                             --osinfo detect=on \
                                             --vcpus $CPU \
                                             --memory $MEM \
                                             --disk size=$DISK,sparse=true \
					     --disk 'device=cdrom,path=/var/lib/libvirt/images/iso/win2022.iso,boot_order=2' \
				             --disk 'path=/var/lib/libvirt/images/iso/config.iso,device=cdrom'


				

			fi

				
			MYREL=$(ls -1 /var/lib/libvirt/images/iso | grep $REL |sort -n |tail -1 | awk -F'.iso' '{ print $1 }')
			
			ansible-playbook create-ksfile.yml -e rel=${MYREL} -e newhostname=${name}
			echo "create server $name"
			virt-install --name $name \
                                     --location http://${FQDN}:8000/${MYREL}\
                                     --osinfo detect=on \
                                     --vcpus $CPU \
                                     --memory $MEM \
                                     --initrd-inject ks.cfg \
                                     --extra-args="inst.ks=file:///ks.cfg  console=tty0 console=ttyS0,115200n8" \
                                     --disk size=$DISK,sparse=true
		fi
	fi
	echo $name

done
