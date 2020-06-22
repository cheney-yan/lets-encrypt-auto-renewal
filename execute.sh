#!/bin/bash
"${AUTH_TOKEN?Need to set AUTH_TOKEN}"
"${ZONE_ID?Need to set ZONE_ID}"
sudo kdir -p /etc/letsencrypt
sudo mkdir /etc/dnsrobocert
sudo cp config.yml /etc/dnsrobocert/
sudo docker-compose up -d