#! /bin/bash -x
declare -A singleDict
singleDict=(["heads"]=0 ["tails"]=0)
headcount=0
tailcount=0
no_of_flips=10
function head_or_tails()
{
	if [[ $((RANDOM%2)) -eq 1 ]]
	then
	        echo heads
		coin="heads"
	else
	        echo tails
		coin="tails"
	fi
}
function SingleCombination()
{
	for (( i=0; i<$no_of_flips; i++ ))
	do
		head_or_tails
		if [[ $coin == heads ]]
		then
			singleDict[heads]=$(( ${singleDist[heads]}+1 ))
			((headcount++))
		else
			singleDict[tails]=$(( ${singleDict[tails]}+1 ))
			((tailscount++))
		fi
	done
	headpercentage=$(( ($headcount * 100) / $no_of_flips ))
	tailpercentage=$(( ($tailcount * 100) / $no_of_flips ))
}
SingleCombination
