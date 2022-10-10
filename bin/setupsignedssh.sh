#!/usr/bin/env bash

vault write ssh-host-signer/sign/hostrole  cert_type=host  public_key=@/etc/ssh/ssh_host_rsa_key.pub
vault write -field=signed_key ssh-host-signer/sign/hostrole  cert_type=host public_key=@/etc/ssh/ssh_host_rsa_key.pub | sed "s/...$//" |tr -d '"' > /etc/ssh/ssh_host_rsa_key-cert.pub.new
chmod 0640 /etc/ssh/ssh_host_rsa_key-cert.pub.new

diff /etc/ssh/ssh_host_rsa_key-cert.pub.new /etc/ssh/ssh_host_rsa_key-cert.pub
if [[ $? != 0 ]];
then
	echo "`date`: refresh cert"
	mv /etc/ssh/ssh_host_rsa_key-cert.pub.new /etc/ssh/ssh_host_rsa_key-cert.pub
	systemctl restart sshd

else
	echo "`date`: Cert is ok"
fi


