#! /bin/bash
# this script display how many files are in ~/pictures,
#   how much space they use,
#   and the sice and name of the 3 largest files

echo -n "There are"
find ~/Pictures -type f | wc -l
echo " files in the ~/Pictures directory"

echo "the Picture directory uses (in Mbytes):"
du -sm ~/Pictures
du -h | sort -hr | head -n3
ls -lnhS ~Pictures | grep ^- | head -3
echo  "The 3 largest files in the ~/Pictures directory are:"
find . -type f -exec du -s {} \; | sort -n | tail -3