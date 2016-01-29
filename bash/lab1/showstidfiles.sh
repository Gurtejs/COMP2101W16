#!/bin/bash
# this script shows the set uid and gid files in/usr
echo "setuid files in /usr"
echo "==================="
find -perm -4000 -type f -ls

echo ""
echo "setuid files in /usr"
echo "===================="
find -perm -2000 -type f -ls
