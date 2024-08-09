#!/bin/bash

##############
#Author: vaishnavi
#Date: 9th August 2024
#Script for printing numbers between 1 to 100 which are divisible by 3, divisible by 5, but not divisible by 15
############################

for i in {1..100}; do
	if([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ];
then
 echo $i
	fi;
done
