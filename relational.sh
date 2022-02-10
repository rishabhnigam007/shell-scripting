#! /bin/bash

echo "Relational operator..."

# Syntax : if [[ condition ]]
#           then
#  		<execute command>
#	   elif [[ condition ]]
#	   then
#  		<execute another command>
#	   else
#  		<execute default command>
#	   fi

read -p "Enter 1st number : " n1
read -p "Enter 2nd number : " n2
if [[ n1 -eq n2 ]]
then
	echo "Yes they are the same"
else
	echo "Not the same number"
fi
   
#This is for ending if so write reverse of if

# [3 -eq 3]  same as [3 = 3]
# [3 -ne 3]  same as [3 is not 3]
# [3 -gt 3]  same as [3 > 3]
# [3 -lt 3]  same as [3 < 3]
# [3 -ge 3]  same as [3 >= 3]
# [3 -le 3]  same as [3 <= 3]

read -p "Enter any number : " n

if [ $n -gt 2 ]
then
	echo "Number is greater than 2"
fi

read -p "Enter the age : " age

if [ $age -ge 18 ]
then
	echo "Eligible voter!!"
else
	echo "Not a eligible voter!!"
fi

read -p "Enter a number between 1 to 3 : " guess

if [ $guess == 1 ] ;then
	echo "Number is 1"
elif [ $guess == 2 ] ;then
	echo "Number is 2"
elif [ $guess == 3 ] ;then
	echo "Number is 3"
else
	echo "You enter something else than 1 to 3 !!"
fi

cmd /k

#This is a script file