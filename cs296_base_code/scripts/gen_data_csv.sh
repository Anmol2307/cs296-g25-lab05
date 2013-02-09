#!/bin/bash
file_name="../data/lab05_g25_data.csv"
rm -f $file_name

for i in $(seq 1 100)
do
	for j in $(seq 1 100)
	do
		echo $j$( echo $i | ../bin/cs296_base | sed -e 's/[a-z]//g' | sed -e 's/[A-Z]//g' | sed -e 's/[:]//g' ) | sed 's/[ ]/,/g' >> $file_name
	done
done
