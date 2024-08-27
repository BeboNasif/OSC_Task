#!/bin/bash
if [ -z "$1" ]; 
		then
  			echo "Usage: $0 directory"
  			exit 1
fi
directory=$1
for file in "$directory"/*.txt; 
do
  		if [ -f "$file" ]; 
			then
    				basename=$(basename "$file")
    				mv "$file" "$directory/old_$basename"
  		fi
done
