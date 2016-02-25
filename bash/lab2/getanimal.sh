#!/bin/bash
#
#

#variables
######
colours=("red" "green" "blue" "black")
declare -A animals
animals=([red]="cardinal" [green]="frog" [blue]="lobster" [black]="ant")

#Main
######
read -p "Give me a number from 0-3: " num 
echo "index $num in colours has ${colours[$num]} in it"
animalkey="${colours[$num]}"
echo "the corresponding animal is a ${animals[$animalkey]}"

#!/bin/bash

#This script simulates dice.


while true; do
	read -p "Enter the number of dice to be used from 1 to 5 [2]: "
	if [ -z "$REPLY" ]; then
		numdice=2
		break
	elif [[ $REPLY -ge 1 && $REPLY -le 5 ]] 2>/dev/null; then
		numdice=$REPLY
		break
	else
		echo -e "\n$REPLY is not a number from 1 to 5. Try again.\n"
	fi
done

while true; do
	read -p "Enter the number of sides the dice should have from 4 to 20 [6]: "
	if [ -z "$REPLY" ]; then
		numsides=6
		break
	elif [[ $REPLY -ge 4 && $REPLY -le 20 ]] 2>/dev/null; then
		numsides=$REPLY
		break
	else
		echo -e "\n$REPLY is not a number from 4 to 20. Try again.\n"
	fi
done


echo -en "\nYou rolled "
for (( i=1 ; i <= numdice ; i++ )); do
	roll=$(($RANDOM % $numsides + 1))
	sum=$(($sum + $roll))
	echo -n "$roll"
	test $i -lt $numdice && echo -n ","
done
echo -e " for a $sum\n"
