#!/bin/bash

cd $(dirname "$0")

# Forked from https://github.com/pi-hole/docker-pi-hole/blob/master/examples/docker_run.sh

# Set configuration Pi-hole
password="changeme"
timezone="Europe/London"

mkdir -p "etc-pihole"
mkdir -p "etc-dnsmasq.d"

sudo docker run -d \
    --name pihole \
    -p 53:53/tcp -p 53:53/udp \
    -p 80:80 \
    -v "$(pwd)/etc-pihole:/etc/pihole" \
    -v "$(pwd)/etc-dnsmasq.d:/etc/dnsmasq.d" \
    -e TZ=$timezone \
    -e WEBPASSWORD=$password \
    --restart=unless-stopped \
    pihole/pihole:latest \
    > /dev/null

echo "Pi-hole started"
exit 0
