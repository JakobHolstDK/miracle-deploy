virt-install \
 --name=windows10 \
 --ram=4096 \
 --cpu=host \
 --vcpus=2 \
 --os-type=windows \
 --os-variant=win8.1 \
 --disk size=40,bus=scsi,discard='unmap',format='qcow2' \
 --disk /tmp/win10.iso,device=cdrom,bus=ide \
 --disk /usr/share/virtio-win/virtio-win.iso,device=cdrom,bus=ide \
 --controller type=scsi,model=virtio-scsi \
 --network bridge=br0 \
 --graphics spice,listen=0.0.0.0 \
 --noautoconsole
