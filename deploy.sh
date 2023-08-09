#!/usr/bin/env bash


export FQDN="${HOSTNAME}.openknowit.com"
DEPLOY=$(kalm_netbox netboxdata | jq '.virtual_machines[] | select (.cluster == env.FQDN)')

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
			virt-install --name $name \
                                     --location http://${HOSTNAME}:8000/rhel-9.2\
                                     --osinfo detect=on \
                                     --vcpus $CPU \
                                     --memory $MEM \
                                     --initrd-inject ks.cfg \
                                     --extra-args="inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8" \
                                     --disk size=$DISK,sparse=true


		fi
	fi
	
done




