#!/bin/bash

# Script Name:                  Variables 101
# Author:                       Tommy Taylor
# Date of latest revision:      10/25/2023
# Purpose:                      Learn about variables 

# Declaration of variables
print_login_history() {
   echo  "this is the login history:"
   grep "Accepted password" /var/log/auth.log
}




# call the function
print_login_history


# Main