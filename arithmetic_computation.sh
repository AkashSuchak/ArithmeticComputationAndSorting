#! /bin/bash

#Author : Akash Suchak
#Compute a * b + c

#User Input assign to variables
read -p "Enter Value of A : " a
read -p "Enter Value of B : " b
read -p "Enter Value of C : " c

#Condition to checck User Inputs are integer or not then we calculate
if [[ $a ]] && [[ $b ]] && [[ $c ]] && [ $a -eq $a 2>/dev/null ] && [ $b -eq $b 2>/dev/null ] && [ $c -eq $c 2>/dev/null ]; then
	result=$(( a * b + c ))
	echo "(a * b + c ) : "$result
else
     echo "Wrong Input!! Enter Inputs Only."
fi
