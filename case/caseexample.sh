#!/bin/bash

case $1 in
    start)
            echo now starting $0;;
    stop)
            rm -rf $lockfile
            echo stopping $0;;
    restart)
            echo restarting $0;;
    reload)
            echo reloading $0;;
    status)
            echo showing the status of $0
            echo $0 is up
            ;;
    *)
            echo I don\'t what you are are trying to do
            echo 'Usage: $0 start|stop|restart|reload|status'
            ;;
esac
