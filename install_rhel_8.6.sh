#!/usr/bin/env bash
virt-install --name `date +%s`  --location http://egon.miracle.local:8000/rhel-8.6-x86_64-dvd --osinfo detect=on   --initrd-inject ./ks.cfg  --extra-args="inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8" 



