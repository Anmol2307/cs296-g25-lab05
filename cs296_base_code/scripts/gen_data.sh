#!/bin/bash

for i in {1..100}
	do
		for j in {1..100} 
			do 
				 echo $i | ../bin/cs296_base  > ../data/out-$i-$j.txt
			done
	done

exit
