#!/bin/bash
# Written by Ethan Toney for CS315 to test a compiled c++ program against all *.in files

OIFS=$IFS
IFS=$(echo -en "\n\b")

FILES="$2*.in"

TIMEOUT=3

for f in $FILES
do
	echo "----- starting $f -----"
	echo "$(timeout -s 3 $TIMEOUT $1 < $f)"
	echo "----- finished -----"
done

IFS=OIFS