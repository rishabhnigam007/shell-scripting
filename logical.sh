#! /bin/bash

echo "Logical operator..."

read -p "Enter the age : " age

if [ $age -gt 12 -a $age -lt 20 ] ;then
	echo "This is a teenager"
else
	echo "This is not a teenager"
fi

#Here I am using -o that is OR operator 
#same as for AND operator we use -a

if [ $age -ge 18 -o $age -le 59 ] ;then
	echo "This is a adult"
else
	echo "This is not a adult"
fi

# here -o for or condition like ||
# here -a for and condition like &&

cmd /k