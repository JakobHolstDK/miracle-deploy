#!/usr/bin/env bash

VENV="/tmp/isoservevenv"
sudo rm -ft $VENV >/dev/null 2>&1
python3 -m venv  $VENV

rm -fr $VENV >/dev/null 2>&1 
python3 -m venv $VENV >/dev/null 2>&1
sudo umount /tmp/serve/*
rm -fr /tmp/serve >/dev/null 2>&1
mkdir -p /tmp/serve

for ISO in `ls -1 ~/Downloads|grep \.iso$ |grep -v "([0-9]*)"`
do	
	NAME=`echo $ISO |awk -F'\.iso' '{ print $1}'`
	echo $NAME
	sudo unmount /tmp/serve/$NAME >/dev/null 2>&1
	sudo rm -fr /tmp/serve/$NAME >/dev/null 2>&1
	mkdir -p /tmp/serve/$NAME > /dev/null 2>&1
	fuseiso  ~/Downloads/$ISO /tmp/serve/$NAME
done






$VENV/bin/pip install --upgrade pip
cd rhel && python3 -m http.server --directory /tmp/serve







