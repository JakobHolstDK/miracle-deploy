#!/usr/bin/env bash
virt-install --install debian11 --name installtest  --initrd-inject ./preseed.cfg  --extra-args 'debian/priority=critical' --noreboot
