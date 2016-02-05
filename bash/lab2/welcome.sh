#!/bin/bash
#
# this script will print out a welcome message in a predefined format


myname="Gurtej"
mytitle="Supreme Commander"
hostname=`hostname`
weekday=$(date +%A)

#Main
######
echo "Welcome to planet $hostname, $mytitle $myname!"
echo "Today is $weekday"
