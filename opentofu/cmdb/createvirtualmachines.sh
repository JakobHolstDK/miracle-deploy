#!/usr/bin/env bash
filename="virtualmachines.tf"
echo > $filename
for vm in $(cat humanzone/virtualmachines.list   | grep -v "^#" |tr ' ' '¤')
do
	#NAME CLUSTER TAGS DISKSIZE MEMSIZE CPUS ROLE TENANT OS ORGID ACTIVATIONKEY ENVIRONMENT ROLES

	NAME=$(echo $vm |tr '¤' ' '  |awk  '{ print $1 }')
	CLUSTER=$(echo $vm |tr '¤' ' '  |awk  '{ print $2 }')
	TAGS=$(echo $vm |tr '¤' ' '  |awk  '{ print $3 }')
	DISKSIZE=$(echo $vm |tr '¤' ' '  |awk '{ print $4 }')
	MEMSIZE=$(echo $vm |tr '¤' ' '  |awk  '{ print $5 }')
	CPUS=$(echo $vm |tr '¤' ' '  |awk  '{ print $6 }')
	ROLE=$(echo $vm |tr '¤' ' '  |awk  '{ print $7 }')
	TENANT=$(echo $vm |tr '¤' ' '  |awk  '{ print $8 }')
	OS=$(echo $vm |tr '¤' ' '  |awk  '{ print $9 }')
	ORGID=$(echo $vm |tr '¤' ' '  |awk  '{ print $10 }')
	ACTIVATIONKEY=$(echo $vm |tr '¤' ' '  |awk  '{ print $11 }')
	ENVIRONMENT=$(echo $vm |tr '¤' ' '  |awk  '{ print $12 }')
	ROLES=$(echo $vm |tr '¤' ' '  |awk  '{ print $13 }')
	cat templates/virtualmachine_template.templ |sed "s/NAME/${NAME}/" \
		                          |sed "s/CLUSTER/${CLUSTER}/" \
		                          |sed "s/TAGS/${TAGS}/" \
		                          |sed "s/DISKSIZE/${DISKSIZE}/" \
		                          |sed "s/MEMSIZE/${MEMSIZE}/" \
		                          |sed "s/CPUS/${CPUS}/" \
		                          |sed "s/ROLE/${ROLE}/" \
		                          |sed "s/TENANT/${TENANT}/" \
		                          |sed "s/OS/${OS}/" \
		                          |sed "s/ORGID/${ORGID}/" \
		                          |sed "s/ACTIVATIONKEY/${ACTIVATIONKEY}/" \
		                          |sed "s/ENVIRONMENT/${ENVIRONMENT}/" \
		                          |sed "s/ROLES/${ROLES}/" \
					 >> $filename
done



#resource "netbox_virtual_machine" "NAME" {
#  cluster_id   = netbox_cluster.CLUSTER.id
#  name         = "NAME"
#  tags         = [ TAGS ]
#  disk_size_gb = DISKSIZE
#  memory_mb    = MEMSIZE
#  vcpus        = "CPUS"
#  role_id      = netbox_device_role.ROLE.id
#  tenant_id    = netbox_tenant.TENANT.id
#  local_context_data = jsonencode({
#    "operating system" = "OS"
#    "rhel_org" = ORGID
#    "activation_key" = "ACTIVATIONKEY"
#    "environment" = "ENVIRONMENT"
#    "roles" = [ 
#		{ "zabbix":    "main" , "connectionstring": "123123123123123123123" } , 
#		{ "remotelog": "main" , "loghost": "default" }  
#	]
#  })
#}
#
