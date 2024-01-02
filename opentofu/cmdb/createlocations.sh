#!/usr/bin/env bash
filename="locations.tf"
echo > $filename
for loction in $(cat humanzone/locations.list   |grep -v "^#" | tr ' ' '¤' )
do
	name=$(echo $cluster | tr '¤' ' ' | awk '{ print $1 }')
	cat templates/location_template.templ |sed "s/NAME/${name}/" |sed "s/CLUSTERTYPE/${cltype}/"  | sed "s/CLUSTERGROUP/${clgrp}/" >> $filename
done
