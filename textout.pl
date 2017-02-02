#!/usr/bin/perl

#print "Hello World\r";

#while(true)	{
	#sleep(1);
	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime(time);
	
	#print "printing?";
	
	printf "%4d-%02d-%02d %02d:%02d:%02d\r", $year+1900,$mon+1,$mday,$hour,$min,$sec;
	print "\x10\x14";
	my @out = `uname -no`;
	chomp($out[0]);
	print $out[0];
	#print "Insert message here";
	#print "Time $sec\r";
#}
