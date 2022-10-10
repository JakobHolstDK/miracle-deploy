#!/usr/bin/env bash
vault read -field=public_key ssh-client-signer/config/ca  | sed "s/...$//" |tr -d '"' > /etc/ssh/trusted-user-ca-keys.pem.new
echo >> /etc/ssh/trusted-user-ca-keys.pem.new

diff /etc/ssh/trusted-user-ca-keys.pem.new /etc/ssh/trusted-user-ca-keys.pem
if [[ $? != 0 ]];
then
       	mv /etc/ssh/trusted-user-ca-keys.pem.new /etc/ssh/trusted-user-ca-keys.pem
       	systemctl restart sshd
	echo "`date`: Ssh signer trust refrehed"
else
	echo "`date`: Ssh signer trust ok"
fi

