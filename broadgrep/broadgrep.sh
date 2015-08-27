#!/bin/bash
# grep a specified set of files for patterns found in a reference file

echo "broadgrep: grep with a pattern file"
echo "Enter pattern file name: "
read PATTERN
echo "Enter target file name: "
read TARGET
echo "Enter output file name: "
read OUTPUT

grep -f $PATTERN $TARGET >> $OUTPUT

echo "Searched $TARGET for all patterns in $PATTERN"
echo "You can find your results in $OUTPUT"
