#! /bin/bash -x
if [[ $((RANDOM%2)) -eq 1 ]]
then
	echo heads
else
	echo tails
fi


