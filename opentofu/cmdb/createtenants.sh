#!/usr/bin/env bash
filename="tenants.tf"
echo > $filename
for tenant in $(cat humanzone/tenants.list   |grep -v "^#"  | tr ' ' '¤' )
do
	group=$(echo $tenant  | awk -F ';' '{ print $1 }' | tr '¤' ' ')
	name=$(echo $tenant  | awk -F ';' '{ print $2 }' | tr '¤' ' ')
	desc=$(echo $tenant  | awk -F ';' '{ print $3 }' | tr '¤' ' ')
	slug=$(echo $name | tr ' ' '-' | tr '[:upper:]' '[:lower:]')
	cat templates/tenant_template.templ |sed "s/CUSTOMER/${name}/" |sed "s/DESCRIPTION/${desc}/" | sed "s/SLUG/${slug}/" |sed "s/GROUP/${group}/"   | tr '¤' ' ' >> $filename
done

