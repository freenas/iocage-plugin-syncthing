#!/bin/sh

# Enable the service
sysrc -f /etc/rc.conf syncthing_enable="YES"
sysrc -f /etc/rc.conf nginx_enable="YES"

mkdir /Sync
chown -R syncthing:syncthing /Sync

# Start the service
service syncthing start 2>/dev/null
service nginx start 2>/dev/null
