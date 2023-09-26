#!/usr/bin/env bash

sudo umount /tmp/serve/*
rm -fr /tmp/serve >/dev/null 2>&1
mkdir -p /tmp/serve
#We assume that we store rhel iso in "/var/lib/libvirt/images/iso/"
for ISO in `ls -1 /var/lib/libvirt/images/iso/|grep \.iso$ |grep -v "([0-9]*)"`
do	
	NAME=`echo $ISO |awk -F'.iso' '{ print $1}'`
	echo $NAME
	sudo umount /tmp/serve/$NAME >/dev/null 2>&1
	sudo rm -fr /tmp/serve/$NAME >/dev/null 2>&1
	mkdir -p /tmp/serve/$NAME > /dev/null 
	fuseiso  /var/lib/libvirt/images/iso/$ISO /tmp/serve/$NAME
done
cp ks.cfg /tmp/serve
cd rhel && python3 -m http.server --directory /tmp/serve







