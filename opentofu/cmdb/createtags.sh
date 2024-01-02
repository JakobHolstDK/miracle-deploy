#!/usr/bin/env bash

filename="tags.tf"
echo > $filename
for tag in $(cat humanzone/tags.list   | awk '{ print $1 ";" $2 }' |grep -v "^#")
do
	tagname=$(echo $tag |awk -F';' '{ print $1 }')
	tagcolor=$(echo $tag |awk -F';' '{ print $2 }')
	cat templates/tagtemplate.templ |sed "s/TAGNAME/${tagname}/" |sed "s/TAGCOLOR/${tagcolor}/" >> $filename
done
