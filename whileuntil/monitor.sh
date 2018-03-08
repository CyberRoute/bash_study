#!/bin/bash

#usage: monitor <processname>

while ps aux | grep $1 | grep -v grep | grep -v bash > /dev/tty11
do
    sleep 1
done
clear
echo your process has stopped
logger $1 is no longer present
