#! /bin/bash

echo "if-else statement..."

x=10
y=2

#This is the way to declare any variable without giving any space to them

if [ $x -gt $y ] ;then
	echo "number 1 is greater than number 2"
#	exit
elif [ $x -lt $y ] ;then
	echo "number 2 is greater than number 1"
#	exit
else
	echo "both numbers are equal!!"
fi

cmd /k

#exit is just like a break keyword so that condition never fall through