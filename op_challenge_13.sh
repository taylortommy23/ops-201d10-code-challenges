#!/bin/bash

# Install whois
sudo apt-get update
sudo apt-get -y install whois

# Declaration of variables
whois $domain

# Take a user input string. Presumably the string is a domain name such as Google.com.
read -p "Enter Webpage Name: " domain
cd /home/ns/CodeFellows-Ops-201d-Labs/CodeFellows-Ops-201d-Labs-2/
touch domaininfo.txt

# Declaration of functions
Information_Gather() {

# Run whois against a user input string.
whois $domain > domaininfo.txt
# Run dig against the user input string.
dig $domain >> domaininfo.txt
# Run host against the user input string.
host $domain >> domaininfo.txt
# Run nslookup against the user input string.
nslookup $domain >> domaininfo.txt

}

# Main
# Open Text Editor
Information_Gather > domaininfo.txt

# End
