#!/bin/bash

# Forked from https://github.com/pi-hole/docker-pi-hole/blob/master/examples/docker_run.sh

password=$1

if [ -z "$password" ]; then
    echo "Please provide a password for the web interface"
    exit 1
fi

# Note: FTLCONF_LOCAL_IPV4 should be replaced with your external ip.
docker run -d \
    --name pihole \
    -p 53:53/tcp -p 53:53/udp \
    -p 80:80 \
    -v "./etc-pihole:/etc/pihole" \
    -v "./etc-dnsmasq.d:/etc/dnsmasq.d" \
    -e TZ="Europe/London" \
    -e WEBPASSWORD=$password \
    --restart=unless-stopped \
    pihole/pihole:latest \
    > /dev/null

echo "Pi-hole started"
exit 0
