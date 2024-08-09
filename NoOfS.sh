#!/bin/bash

###########################
#Author:- Vaishnavi
#Date:- August 9th 2024
#Number of 'S' in Mississippi
#
###########################


x=mississippi

grep -o "s" <<<"$x" | wc -l

# -o is "only"
#wc -l "will return the count"
#<<<"$x" "it is the standard input which we are passing to grep command"

