#!/bin/bash

keactrl status
echo
echo "Logs are in: /usr/local/var/log/"
ls /usr/local/var/log/*.log
echo
echo "DHCP lease file is at: /usr/local/var/kea/kea-leases4.csv"
echo
echo "The lease expiration is the value after 3600"
echo 'Use "date -d @<epoch_expiration_vale>" to read the expiration date/time'
echo
