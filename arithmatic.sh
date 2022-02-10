#! /bin/bash

echo "This is used for printing anything..."

read -p "Enter first number : " number1
read -p "Enter second number : " number2

echo "Arithmatic operation....."

echo "Add : $((number1 + number2))"
echo "Subtract : $((number1 - number2))"
echo "Multiply : $((number1 * number2))"
echo "Divide : $((number1 % number2))"
echo "Modulus : $((number1 % number2))"
echo "Shorthand : $((number1+=10))"

cmd /k

# This is used for comment purpose