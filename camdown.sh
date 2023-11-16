#!/bin/bash
_date=$(date +%Y-%m-%d -d "1 day ago")
echo "Yesterdays Date: "$_date
echo ""
for d in *
do
	_COUNT=$(ls -aFl "$d" | grep "$_date" | wc -l) 
	if [ "$_COUNT" == 0 ]
		then
			if [[ "$d" != *"timelapse"* ]]
				printf %s\\n ""$d" Stopped recording yesterday!!!"
			fi
	fi
done

