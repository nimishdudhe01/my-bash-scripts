#!/bin/bash

clear

rows=$(($rows+1))

makegrid(){

rows=$(stty size | cut -d " " -f 1)
cols=$(stty size | cut -d " " -f 2)
i=0

while [ $i -lt $(($rows*$cols/2)) ]
do
	echo -n -e "\033[2;31;4$(((((($RANDOM))%7))+1))m  \033[0m"
	i=$(($i+1))
done > /tmp/grid

clear
cat /tmp/grid
rm /tmp/grid

}

while [ 2 -gt 1 ]
do
	makegrid
	sleep 2
done
