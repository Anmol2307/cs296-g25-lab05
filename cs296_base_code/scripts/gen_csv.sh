#!/bin/bash

a=","
file="../data/lab05_g25_data.csv"
rm -f $file 
for i in {1..100..1}
	do
		for j in {1..100..1}
		do
			echo -n $i"," >> $file
			echo -n $j"," >> $file
			out="../data/out-"$j"-"$i".txt"
			tr -d '\n' <<< $(sed -e 's/Average time per step is //' -e 's/ ms//' <<< $(sed -n 2p $out)) >> $file
			echo -n $a >> $file
			tr -d '\n' <<< $(sed -e 's/Average time for collisions is //' -e 's/ ms//' <<< $(sed -n 3p $out)) >> $file
			echo -n $a >> $file
			tr -d '\n' <<< $(sed -e 's/Average time for velocity updates is //' -e 's/ ms//' <<< $(sed -n 4p $out)) >> $file
			echo -n $a >> $file
			tr -d '\n' <<< $(sed -e 's/Average time for position updates is //' -e 's/ ms//' <<< $(sed -n 5p $out)) >> $file
			echo -n $a >> $file
			sed -e 's/Total time for loop is //' -e 's/ ms//' <<< $(sed -n 7p $out) >> $file
		done 
	done
