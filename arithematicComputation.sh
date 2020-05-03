#!/bin/bash -x

var="Welcome to Arithematic Computatio program"
echo "$var"

read -p "Enter a value : " a
read -p "Enter b value : " b
read -p "Enter c value : " c

echo "$a $b $c"
declare -A resultDictionary
counter=0
firstOperation=$(( $a+$(($b*$c)) ))
resultDictionary["$((counter++))"]=$firstOperation
echo "$firstOperation"

secondOperation=$(( $(($a*$b))+$c ))
resultDictionary["$((counter++))"]=$secondOperation
echo "$secondOperation"

thirdOperation=$(( $c+$(($a/$b)) ))
resultDictionary["$((counter++))"]=$thirdOperation
echo "$thirdOperation"

fourthOperation=$(( $(($a%$b))+$c ))
resultDictionary["$((counter++))"]=$fourthOperation
echo "$fourthOperation"

echo ${resultDictionary[@]}

declare -a resultArray
noOfOperations=4
for (( i=0; i<$noOfOperations; i++ ))
	do
		resultArray[$i]=${resultDictionary["$i"]}
	done
echo  ${resultArray[@]}
