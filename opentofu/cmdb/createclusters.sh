#!/usr/bin/env bash
filename="clusters.tf"
echo > $filename
for cluster in $(cat humanzone/clusters.list   |grep -v "^#" | tr ' ' '¤' )
do
	name=$(echo $cluster | tr '¤' ' ' | awk '{ print $1 }')
	cltype=$(echo $cluster| tr '¤' ' ' |awk '{ print $2 }')
	clgrp=$(echo $cluster| tr '¤' ' ' |awk '{ print $3 }')
	cat templates/cluster_template.templ |sed "s/NAME/${name}/" |sed "s/CLUSTERTYPE/${cltype}/"  | sed "s/CLUSTERGROUP/${clgrp}/" >> $filename
done
