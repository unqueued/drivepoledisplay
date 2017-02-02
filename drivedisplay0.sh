#!/bin/sh

./a.out 20 > /dev/ttyS0
echo -e "\r\n" > /dev/ttyS0

for (( ; ; ))
	do
		#echo -e "\r\n" > /dev/ttyS0
		#echo -e "\r\n" > /dev/ttyS0
		#echo `date -I` > /dev/ttyS0
		#echo -e "\r\n" > /dev/ttyS0
		./a.out 31 > /dev/ttyS0
		./a.out 20 > /dev/ttyS0
		echo Time: `date '+%H:%M:%S'` > /dev/ttyS0
		
		sleep 1s
	done