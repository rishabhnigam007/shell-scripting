#! /bin/bash

#This is shibang also called as header here need to mention user bash directory path 

echo "This is my first script..."

number1=20
number2=10
echo "First number is : $number1"
echo "Second number is : $number2"

echo "Arithmatic operation..."

echo "Add : $((number1 + number2))"
echo "Subtract : $((number1 - number2))"
echo "Multiply : $((number1 * number2))"
echo "Divide : $((number1 / number2))"
echo "Modulus : $((number1 % number2))"
echo "Shorthand add 10 : $((number1+=10))"

echo "Conditions..."

if [ 3 -eq 3 ] ;then
	echo "Yes they are the same"
fi   
#this is for ending if so write reverse of if

# [3 -eq 3]  same as [3 = 3]
# [3 -ne 3]  same as [3 is not 3]
# [3 -gt 3]  same as [3 > 3]
# [3 -lt 3]  same as [3 < 3]
# [3 -ge 3]  same as [3 >= 3]
# [3 -le 3]  same as [3 <= 3]

echo "continue with our program"
echo "bye"

read -p "how old you are : " age

if [ $age -gt 17 ] ;then
	echo "eligible voter"
else
	echo "not a eligible voter"
fi

read -p "Type a integer number between 1 to 4 : " num
if [ $num == "1" ] ;then
	echo "Type 1"
elif [ $num == "2" ] ;then
	echo "Type 2"
elif [ $num == "3" ] ;then
	echo "Type 3"
elif [ $num == "4" ] ;then
	echo "Type 4"
else
	echo "None of the above"
fi

echo "line 1"
echo "line 2"
echo "line 3"
#exit
#This is for break the statement like break keyword
echo "line 4"
echo "line 5"

# Logical statement start from here

read -p "Enter the age : " age
if [ $age -gt 0 -o $age -lt 100 ] ;then
	echo "A normal person"
	exit
fi

if [ $age -lt 100 -a $age -gt 0 ] ;then
	echo "valid age"
	exit
fi

cmd /k

# here -o for or condition like ||
# here -a for and condition like &&

#This is shell scripting content
