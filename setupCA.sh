certtool --generate-privkey > cakey.pem
cat > ca.info <<EOF
cn ACME Organization, Inc.
ca
cert_signing_key
EOF
certtool --generate-self-signed --load-privkey cakey.pem \
  --template ca.info --outfile cacert.pem
sudo mkdir -p /etc/pki/CA
sudo cp cacert.pem /etc/pki/CA/
