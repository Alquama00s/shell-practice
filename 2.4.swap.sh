# !/bin/sh

# taking inputs
echo "enter first number"
read num1
echo "Enter second Number"
read num2

# swapping

num1=$(($num1 + $num2))
num2=$(($num1 - $num2))
num1=$(($num1 - $num2))
printf "swapped \n first number is $num1 \n second number is $num2"