#!/usr/bin/env bash
filename="tenantgroups.tf"
echo > $filename
for tenantgroup in $(cat humanzone/tenantgroups.list   |grep -v "^#"  | tr ' ' '¤' )
do
	name=$(echo $tenantgroup  | awk -F ';' '{ print $1 }' | tr '¤' ' ')
	desc=$(echo $tenantgroup  | awk -F ';' '{ print $2 }' | tr '¤' ' ')
	slug=$(echo $name | tr ' ' '-' | tr '[:upper:]' '[:lower:]')
	cat templates/tenantgroup_template.templ |sed "s/TENANTGROUP/${name}/" |sed "s/DESCRIPTION/${desc}/" | sed "s/SLUG/${slug}/"   | tr '¤' ' ' >> $filename
done


		