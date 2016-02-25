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
