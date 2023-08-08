#!/usr/bin/env bash
export NETBOX_PROVIDER_VERSION=6.0.0
mkdir -p ~/.terraform.d/plugins/registry.terraform.io/smutel/netbox/${NETBOX_PROVIDER_VERSION}/linux_amd64
cp terraform-provider-netbox_v${NETBOX_PROVIDER_VERSION} ~/.terraform.d/plugins/registry.terraform.io/smutel/netbox/${NETBOX_PROVIDER_VERSION}/linux_amd64/terraform-provider-netbox_v${NETBOX_PROVIDER_VERSION}

wget -O  ~/.terraform.dk/artifacts.openknowit.com/netbox/netbox/3.5.3/linux_amd64/terraform-provider-netbox https://artifacts.openknowit.com/openknowit/netbox/3.5.3/terraform-provider-netbox 

