#!/bin/bash
#github.com/chriswmorris

echo "Stopwatch By Chris"
echo ""
echo "=================================================="
echo "Would you like to run a stopwatch up or down?"
echo "Press 1 or 2"
echo "1. up"
echo "2. down"
echo ""
echo "=================================================="
read -p "Answer: " -n 1 -r
echo ""
	if [[ $REPLY =~ ^[1]$ ]]; then
		echo ""
		echo ""
		echo ""
		echo ""
		date1=`date +%s`; while true; do 
		   echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
		done
		fi

	if [[ $REPLY =~ ^[2]$ ]]; then
		echo ""
		echo "How many seconds would you like to count down to?"
		echo "Enter a number followed by [ENTER]"
		echo ""
		read -p "Answer: " seconds
		echo ""

		date1=$((`date +%s` + $seconds)); 
		while [ "$date1" -ge `date +%s` ]; do 
		  echo -ne "$(date -u --date @$(($date1 - `date +%s` )) +%H:%M:%S)\r"; 
		done
else
 	echo "Please enter in 1 or 2"
	
fi



