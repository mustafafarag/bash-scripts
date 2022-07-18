#!/bin/bash


echo "This is a Password Generator"
echo "Six Password will be Generrated Fell Free to choose One "
echo "Please Insert The Length of the Password :  "

read pass_length



for l in 1 2 3 4 5 6 
do

	openssl rand -base64 48 | cut  -c1-$pass_length  

done




