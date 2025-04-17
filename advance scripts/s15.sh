#!/bin/bash

# Write a script to check if a service (like nginx) is running, and start it if not.

SERVICE="nginx"

if  systemctl is-active --quiet $SERVICE ;then
    echo "${SERVICE} is running"

else
    echo "${SERVICE} is not running. Starting ${SERVICE}"
    sudo systemctl start $SERVICE
fi


# systemctl = it is used to interact with the systemd(service manager)
# systemctl is_active <service_name> = it checks whether a particular service is running
# systemctl is_enabled <service_name> = does that service starts on it own on boot
# sudo systemctl disable/enable <service_name> = it disable to start service on boot
# sudo systemctl start/stop/restart <service_name = to start,stop,restart a service.
