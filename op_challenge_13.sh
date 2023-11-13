#!/bin/bash
# Script:                     Opschallenge13
# Author:                     Tommy Taylor
# Date of latest revision:    11/8/2023
# Purpose:                    op_challenge_13.sh
# Prompt the user for a domain name
read -p "Enter a domain name (e.g., google.com): " domain_name
# Define the output file
output_file="domain_info.txt"
# Run whois, dig, host, and nslookup, and append the results to the output file
{
    echo "WHOIS Information:" > domain_info.txt
    whois "$domain_name"
    echo -e "\nDIG Information:" > domain_info.txt
    dig "$domain_name"
    echo -e "\nHOST Information:" > domain_info.txt
    host "$domain_name"
    echo -e "\nNSLOOKUP Information:"> domain_info.txt
    nslookup "$domain_name"
}
