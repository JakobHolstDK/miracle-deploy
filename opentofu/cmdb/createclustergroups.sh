#!/usr/bin/env bash
filename="clustergroups.tf"
echo > $filename
for clustergroup in $(cat humanzone/clustergroups.list   |grep -v "^#"  | tr ' ' '¤' )
do
	name=$(echo $clustergroup  | tr '¤' ' '|awk '{ print $1 }')
	longname=$(echo $clustergroup |awk -F'"' '{ print $2 }')
	cat templates/clustergroup_template.templ |sed "s/NAME/${name}/" |sed "s/DESCRIPTION/${longname}/"  | tr '¤' ' ' >> $filename
done


		