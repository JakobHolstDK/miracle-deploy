#!/usr/bin/env bash

VENV="/tmp/isoservevenv"
rm -ft $VENV >/dev/null 2>&1
python3 -m venv  $VENV

rm -fr $VENV >/dev/null 2>&1 
python3 -m venv $VENV >/dev/null 2>&1
umount /tmp/serve/*
rm -fr /tmp/serve >/dev/null 2>&1
mkdir -p /tmp/serve

for ISO in `ls -1 /opt/images|grep \.iso$ |grep -v "([0-9]*)"`
do	
	NAME=`echo $ISO |awk -F'.iso' '{ print $1}'`
	echo $NAME
	unmount /tmp/serve/$NAME >/dev/null 2>&1
	rm -fr /tmp/serve/$NAME >/dev/null 2>&1
	mkdir -p /tmp/serve/$NAME > /dev/null 2>&1
	fuseiso  /opt/images/$ISO /tmp/serve/$NAME
done

$VENV/bin/pip install --upgrade pip
cd /opt/images && python3 -m http.server --directory /tmp/serve  --bind 127.0.0.1 


