#!/bin/bash


for ip in {1..254}
do
	ping -c 5 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
