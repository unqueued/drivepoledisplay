#!/bin/sh

stty -F /dev/ttyS0 4800
perl -e 'print "\x1E";' > /dev/ttyS0
perl -e 'print "\x14";' > /dev/ttyS0

for (( ; ; ))
	do
		perl -e 'print "\x10\x00";' > /dev/ttyS0
		./textout.pl > /dev/ttyS0
		
		sleep .3s
	done
