#!/bin/sh

TTY=/dev/ttyUSB0

stty -F $TTY 4800
perl -e 'print "\x1E";' > $TTY
perl -e 'print "\x14";' > $TTY

for (( ; ; ))
	do
		perl -e 'print "\x10\x00";' > $TTY
		./textout.pl > $TTY
		
		sleep .3s
	done
