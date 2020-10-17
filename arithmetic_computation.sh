#! /bin/bash 

#Author : Akash Suchak
#Compute c + a / b

#User Input assign to variables
read -p "Enter Value of A : " a
read -p "Enter Value of B : " b
read -p "Enter Value of C : " c

#Condition to checck User Inputs are integer or not then we calculate
if [[ $a ]] && [[ $b ]] && [[ $c ]] && [ $a -eq $a 2>/dev/null ] && [ $b -eq $b 2>/dev/null ] && [ $c -eq $c 2>/dev/null ]; then
	result=`awk -v a=$a -v b=$b -v c=$c 'BEGIN{result=(c + a / b); print result}' `
	echo "(c + a / b ) : "$result
else
     echo "Wrong Input!! Enter Inputs Only."
fi
