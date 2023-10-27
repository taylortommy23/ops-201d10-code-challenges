#!/bin/bash

# Script Name:                  Ops-challenge-04
# Author:                       Tommy Taylor
# Date of latest revision:      10/26/2023
# Purpose:                      Arrays

# declare an array
directories=(./dir1 ./dir2 ./dir3 ./dir4)
mkdir ${directories[*]}
touch ${directories[0]}/test.txt
touch ${directories[1]}/test.txt
touch ${directories[2]}/test.txt
touch ${directories[3]}/test.txt




# Main