#!/usr/bin/env bash
filename="clustertypes.tf"
echo > $filename
for clustertype in $(cat humanzone/clustertypes.list   |grep -v "^#"  | tr ' ' '¤' )
do
	name=$(echo $clustertype  | tr '¤' ' '|awk '{ print $1 }')
	longname=$(echo $clustertype |awk -F'"' '{ print $2 }')
	cat templates/clustertype_template.templ |sed "s/CLUSTERTYPE/${name}/" |sed "s/CLUSTERTYPELONG/${longname}/"  | tr '¤' ' ' >> $filename
done
