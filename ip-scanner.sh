#!/bin/bash

if [ "$1" == "" ]
then
	echo "You forgot an IP address!"
	echo "Syntax: ./ip-scanner.sh 192.168.1"
	echo "cat ip"
	

else
	chmod +x sweep.sh
	./sweep.sh $1 > /tmp/qwerty.txt
	sleep 10s
	cat /tmp/qwerty.txt | uniq > ip
	cat -n ip
fi
