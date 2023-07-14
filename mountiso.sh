#!/usr/bin/env bash
# loop through all iso file in ~/Downloads, create /mnt/filename(%.iso), ans fuseiso mount the iso file
VENV="/tmp/isoservevenv"
sudo rm -ft $VENV >/dev/null 2>&1
python3.9 -m venv  $VENV
$VENV/bin/pip install --upgrade pip
$VENV/bin/pip install html.serve
exit


for ISO in `ls -1 ~/Downloads|grep \.iso$ |grep -v "([0-9]*)"`
do	
	NAME=`echo $ISO |awk -F'\.iso' '{ print $1}'`
	echo $NAME
	sudo unmount /tmp/serve/$NAME >/dev/null 2>&1
	sudo rm -fr /tmp/serve/$NAME >/dev/null 2>&1
	mkdir -p /tmp/serve/$NAME > /dev/null 2>&1
	fuseiso  ~/Downloads/$ISO /tmp/serve/$NAME
done

python3 -m html.serve --directory=/tmp/serve

