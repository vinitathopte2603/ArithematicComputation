#!/bin/bash -x

var="Welcome to Arithematic Computatio program"
echo "$var"

read -p "Enter a value : " a
read -p "Enter b value : " b
read -p "Enter c value : " c

echo "$a $b $c"
declare -A result
counter=0
firstOperation=$(( $a+$(($b*$c)) ))
result["$((counter++))"]=$firstOperation
echo "$firstOperation"

secondOperation=$(( $(($a*$b))+$c ))
result["$((counter++))"]=$secondOperation
echo "$secondOperation"

thirdOperation=$(( $c+$(($a/$b)) ))
result["$((counter++))"]=$thirdOperation
echo "$thirdOperation"

fourthOperation=$(( $(($a%$b))+$c ))
result["$((counter++))"]=$fourthOperation
echo "$fourthOperation"

echo ${result[@]}
