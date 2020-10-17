#! /bin/bash

#Author : Akash Suchak
#Store the results in a Dictionary for every Computation

#User Input assign to variables
read -p "Enter Value of A : " a
read -p "Enter Value of B : " b
read -p "Enter Value of C : " c

#Declaring Dictionary
declare -A results_expr

#Deaclring Empty Array
valuesOfDict=()

#Condition to checck User Inputs are integer or not then we calculate
if [[ $a ]] && [[ $b ]] && [[ $c ]] && [ $a -eq $a 2>/dev/null ] && [ $b -eq $b 2>/dev/null ] && [ $c -eq $c 2>/dev/null ]; then
	result1=`awk -v a=$a -v b=$b -v c=$c 'BEGIN{result=(a + b * c); print result}' `
	results_expr[expr1]=$result1

	result2=`awk -v a=$a -v b=$b -v c=$c 'BEGIN{result=(a * b + c); print result}' `
	results_expr[expr2]=$result2

	result3=`awk -v a=$a -v b=$b -v c=$c 'BEGIN{result=(c + a / b); print result}' `
	results_expr[expr3]=$result3

	result4=`awk -v a=$a -v b=$b -v c=$c 'BEGIN{result=(a % b + c); print result}' `
	results_expr[expr4]=$result4

else
     echo "Wrong Input!! Enter Inputs Only."
fi

#Get Values of Dictionary into array
add_values=`echo ${results_expr[@]}`
valuesOfDict=($add_values)

#Display Array Values
echo "Displaying Values From Array : "${valuesOfDict[@]}
