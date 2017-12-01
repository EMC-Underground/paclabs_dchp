# Lab Kea DHCP server on CentOS 7

Builds a VM on a CentOS 7 template using Terraform.
Installs and configures Kea DHCP on the server.

Requires a compiled Kea 1.3

## Edit the following config files for your own environment:
- terraform.tfvars
- files/kea-ctrl-agent.conf
- files/kea-dhcp-ddns.conf
- files/kea-dhcp4.confLw

Run 'make' to install
