#!/bin/sh

# Enable the service
sysrc -f /etc/rc.conf syncthing_enable="YES"

# Start the service
service syncthing start
