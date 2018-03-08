#!/bin/bash

if [ -z $1 ]
then
        echo enter the amount of minutes
        read COUNTER
else
        COUNTER=$1
fi

COUNTER=$(( COUNTER * 60 ))

minusone(){
        COUNTER=$(( COUNTER - 1 ))
        sleep 1
}

while [ $COUNTER -gt 1 ]
do
echo $COUNTER seconds remaing
minusone
done

[ $COUNTER = 1 ] && echo one second remaining
minusone
[ $COUNTER = 0 ] && echo time is up!

