#!/usr/bin/env bash

apt update 
apt dist-upgrade -y
apt install -y apt-file lsb-release tmux jq docker.io docker-compose
vault read -field=public_key ssh-client-signer/config/ca > /etc/ssh/trusted-user-ca-keys.pem

grep "TrustedUserCAKeys /etc/ssh/trusted-user-ca-keys.pem" /etc/ssh/sshd_config
if [[ $? == 0 ]];
then
	echo "TrustedUserCAKeys /etc/ssh/trusted-user-ca-keys.pem" >> /etc/ssh/sshd_config
	systemctl restart sshd
fi

cd /opt
if [[ -d /opt/netbox-docker ]];
then
	cd /opt/netbox-docker
	git pull
else

 	git clone https://github.com/netbox-community/netbox-docker.git
fi

cd /opt/netbox-docker
tee docker-compose.override.yml <<EOF 
version: '3.4' 
services: 
  netbox: 
    ports: 
      - 8000:8080 
EOF 
docker-compose pull 
docker-compose up -d
