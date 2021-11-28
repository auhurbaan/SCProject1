#!/bin/bash

if [ $(whoami) == "root" ]
then
	exit
fi

echo "A Quick System Audit Script"
date
echo ""
echo "Machine Type Info:"
echo $MACHTYPE
echo -e "Uname info: $(uname -a) \n"
theip=$(ip addr | grep inet | tail -2 | head -1)
echo $theip
echo "Hostname: $(hostname -s) "
echo "DNS Servers: "
cat /etc/resolv.conf
echo "Memory Info:"
free
echo -e "\nCPU Info:"
lscpu | grep CPU
echo -e "\nDisk Usage:"
df -H | head -2
echo -e "\nWho is logged in: \n $(who) \n"echo "Sys Info Script"
echo "Run at: $(date)"
echo "Run by: $USER"
if [ ! -d ~/research ]
then 
	mkdir ~/research
else
	echo "Directory Already Created"
fi
echo "Executable files outputted to sys_info file:"
if [ -f ~/research/sys_info.txt ] 
then
	echo "Sys_info File Found"
	rm ~/research/sys_info.txt
fi

somefiles=$(find -type f -perm 777)
echo $somefiles
ps -a | head

