	#!/bin/bash

	#######################################
	# Author: Swapnil
	# Date: 21/03/2024
	# This script checks system health
	#######################################

	# Function to print disk usage information
		echo "***************************"
		echo "Disk Usage:"
		df -h | awk '{print $1,$5}' | while read line; do
			usage=$(echo $line | awk '{print $2}' | sed 's/%//')
			if [ $usage -gt 80 ]; then
				echo -e "\033[1;31m$line\033[0m"
				echo "Alert: Disk usage on $(echo $line | awk '{print $1}') exceeds 80%"
			else
				echo $line
			fi
		done

	
	# Function to print memory usage information
	
        echo "***************************"
		echo "Memory Usage:"
		free -h | grep -E "Mem:|Swap:" | awk '{print $1, "\tTotal:", $2, "\tUsed:", $3, "\tAvailable:", $4}'
		echo


	# Function to print CPU load averages
	    echo "***************************"
		echo "CPU Load:"
		cat /proc/loadavg | awk '{print "1 min:", $1, "\t5 min:", $2, "\t15 min:", $3}'
		echo


	# Function to print top processes by memory usage
		echo "***************************"
		echo "Top Processes by Memory Usage:"
		ps -eo pid,ppid,%mem,%cpu,cmd --sort=-%mem | head -n 6 | awk 'NR>1 {print $1, $2, $3"%", $4"%", $5}'
		echo




