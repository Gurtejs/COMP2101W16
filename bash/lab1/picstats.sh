#! /bin/bash
# this script display how many files are in ~/pictures,
#   how much space they use,
#   and the sice and name of the 3 largest files

echo -n "There are"
find ~/Pictures -type f | wc -l
echo " files in the ~/Pictures directory"

echo "the Pictures directory uses (in Mbytes):"
du -sm ~/Pictures

echo  "The 3 largest files in the ~/Pictures directory are:"
# from micheal du -h ~/picture/* | sort -hr | head -3
# from  simon - ls -lnhS ~/Pictures |grep ^- | head -3
cd ~/Pictures
find . -type f -exec du -h {} \; | sort -h | tail -3 
find ~/Pictures -type f | wc -l | xargs echo -n