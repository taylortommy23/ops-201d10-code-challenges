#!/bin/bash

# Display Name of Computer
echo " Computer Name"
lshw | grep "ip="

# Display CPU Information
echo "CPU Information"
lshw | grep -A 10 "cpu"

# Display RAM information
echo RAM Information
lshw |grep -A 6 "*-memory"

 # Display Display adapter information
 echo "Display Adapter Information:"
 lshw | grep -A 14 "display"

 # Display Network adapter information
 echo "Ntework Adapter Information:"
 lshw | grep -A 10 "network"
