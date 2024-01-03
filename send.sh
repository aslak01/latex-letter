#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <parameter>"
	exit 1
fi

if [ ! -f "output.pdf" ]; then
	echo "Error: The file 'output.pdf' does not exist."
	exit 1
fi

# ensure there is a parent dir
parentDir="sendt"
mkdir -p "$parentDir"

recipient="$1"
destination="$parentDir/$recipient"

if [ -d "$destination" ]; then
	counter=1
	while [ -d "$destination-$counter" ]; do
		counter=$((counter + 1))
	done
	destination="$destination-$counter"
fi

mv output.pdf "$recipient"

rsync -a "$recipient" letter.md "$destination/"

rm "$recipient"

echo "$recipient moved to $destination successfully."
