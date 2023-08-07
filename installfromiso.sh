#!/usr/bin/env bash
if [[ $1 == "" ]];
then
  name=`date +%s` 
else
  name=$1
fi

if [[ $2 == "" ]];
then
  os="rhel-9.2"
else
  os=$2 
fi

virt-install --name $name  --location http://openstack01.openknowit.com:8000/${os} --osinfo detect=on --vcpus 8 --memory 4096  --initrd-inject ks.cfg  --extra-args="inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8" 


