#!/usr/bin/env bash

thisYear="$(date +%Y)"
lastYear="$((thisYear - 1))"
files="$(find ./_posts -maxdepth 1 -type f ! -name "$lastYear*" -and ! -name "$thisYear*")"
#files="$files $(find ./_posts/ -name $lastYear* -type f)"
for file in $files; do
	if grep -q 'tags: project' "$file"; then
		echo "Old project detected: $file"
	elif grep -q 'tags: hidden' "$file"; then
		echo "Hidden post detected: $file"
	else
		sed -i -e 's/tags: /tags: hidden /g' "$file"
		echo "Converted to hidden: $file"
	fi
done
