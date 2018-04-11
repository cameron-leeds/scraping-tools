#!/bin/bash
file="links-clean.txt"
while read line
do
outfile=($echo $line | awk 'BEGIN { FS = "/" } ; {print $NF}')
curl -o "$outfile.html" "$line"
sleep lm
done < "$file"



