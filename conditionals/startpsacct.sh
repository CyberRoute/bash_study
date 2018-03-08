#!/bin/bash
systemctl is-active psacct > /dev/null 2>&1

if [ $? -ne 0 ]; then
    systemctl start psacct
else
    systemctl stop psacct
fi
