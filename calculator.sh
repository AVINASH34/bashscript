#! /bin/bash

##############################################################
#Author: Avinash
#Date: 04-03-2024 (DD-MM-YYYY)
#PURPOSE: Simple calculation
#PATH: ./calc.sh
##############################################################
read -p " ENTER YOUR FIRST NUMBER : " first_number
read -p " ENTER YOUR SECOND NUMBER : " second_number
echo " NOTE: NO DECEMIALS ARE ALLOWED "
echo " Please select  option like Add for Addition Sub for Subtraction Mul for Multification & Div for Division "
read -p " ENTER MATHMETICAL OPERATION WOULD YOU LIKE TO PERFORM : " math_oper
if [ $math_oper == Add ]
then
        echo $(( $first_number + $second_number ))
elif
        [ $math_oper == Sub ]
then
        echo $(( $first_number - $second_number ))
elif
        [ $math_oper == Mul ]
then
        echo $(( $first_number * $second_number ))
elif
        [ $math_oper == Div ]
then
        echo $(( $first_number / $second_number ))

else
        echo " CHOOSE CORRECT OPERATION WITH IN GIVEN OPTIONS "
fi