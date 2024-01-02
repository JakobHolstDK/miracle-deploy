import subprocess
import json
import os

# Set environment variables
FQDN = f"{os.getenv('HOSTNAME')}.openknowit.com"
KALM_SILENCE = "true"

# Execute 'kalm_netbox netboxdata' command and parse JSON output
kalm_netbox_output = subprocess.run(['kalm_netbox', 'netboxdata'], stdout=subprocess.PIPE, text=True)
deploy_data = json.loads(kalm_netbox_output.stdout)
deployed_vms = [vm for vm in deploy_data['virtual_machines'] if vm['cluster'] == FQDN]

# Get active and inactive VM lists using 'virsh list' commands
active_vms = subprocess.run(['virsh', 'list'], stdout=subprocess.PIPE, text=True).stdout.split('\n')[2:-1]
inactive_vms = subprocess.run(['virsh', 'list', '--inactive'], stdout=subprocess.PIPE, text=True).stdout.split('\n')[2:-1]

# Iterate through deployed VMs
for vm in deployed_vms:
    name = vm['name'].replace('.openknowit.com', '')

    # Check if the server is inactive
    if name in inactive_vms:
        print("Server is inactive")
        subprocess.run(['virsh', 'start', name])
    else:
        # Check if the server is active
        if name in active_vms:
            print("Server is active")
        else:
            print("Server is missing")
            with open('/tmp/server.json', 'w') as json_file:
                json.dump(vm, json_file)

            DISK = vm['disk_gb']
            CPU = vm['cpu']
            MEM = vm['memory_mb']
            REL = vm['local_context_data']['os']['operating_system']

            if REL == "win2022":
                print("Deploying a Windows 2022 server")
                iso_file = f'/var/lib/libvirt/images/iso/win2022.iso'
                config_iso_file = f'/var/lib/libvirt/images/iso/config.iso'

                subprocess.run(['virt-install',
                                '--name', name,
                                '--import',
                                '--graphics=vnc,password=mypasswd,listen=0.0.0.0,port=6534',
                                '--osinfo', 'detect=on',
                                '--vcpus', str(CPU),
                                '--memory', str(MEM),
                                '--disk', f'size={DISK},sparse=true',
                                '--disk', f'device=cdrom,path={iso_file},boot_order=2',
                                '--disk', f'path={config_iso_file},device=cdrom'])
            else:
                iso_file = f'/var/lib/libvirt/images/iso/{REL}.iso'
                subprocess.run(['ansible-playbook', 'create-ksfile.yml', '-e', f'rel={REL}', '-e', f'newhostname={name}'])
                print(f"Create server {name}")
                subprocess.run(['virt-install',
                                '--name', name,
                                '--location', f'http://{FQDN}:8000/{REL}',
                                '--osinfo', 'detect=on',
                                '--vcpus', str(CPU),
                                '--memory', str(MEM),
                                '--initrd-inject', 'ks.cfg',
                                '--extra-args', 'inst.ks=file:///ks.cfg console=tty0 console=ttyS0,115200n8',
                                '--disk', f'size={DISK},sparse=true'])
    print(name)
