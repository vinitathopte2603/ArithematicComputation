#!/bin/bash -x

var="Welcome to Arithematic Computatio program"
echo "$var"

read -p "Enter a value : " a
read -p "Enter b value : " b
read -p "Enter c value : " c

echo "$a $b $c"

firstOperation=$(( $a+$(($b*$c)) ))
echo "$firstOperation"

secondOperation=$(( $(($a*$b))+$c ))
echo "$secondOperation"

thirdOperation=$(( $c+$(($a/$b)) ))
echo "$thirdOperation"

fourthOperation=$(( $(($a%$b))+$c ))
echo "$fourthOperation"
