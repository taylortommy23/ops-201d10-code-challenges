#!/bin/bash

# Script Name:                  Ops-challenge-04
# Author:                       Tommy Taylor
# Date of latest revision:      10/26/2023
# Purpose:                      Arrays

# Declaration of variables
variables=2
#Main
while variables=1
do
ps aux
echo "Please enter PID to kill"
read input
kill $input
done