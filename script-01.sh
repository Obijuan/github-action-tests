#!/bin/bash

echo "Inside the script!"
echo ""

echo "**** Working directory"
pwd

echo ""
echo "**** Current user"
whoami

# -- Create a timestap: YearMonthDay-HourMinuteSecond
timestamp=$(date +%Y%m%d-%H%M%S)

echo ""
echo "*** Timestap: $timestamp"

# -- Create a filename with the timestamp
filename="files-$timestamp.txt"
echo "*** Filename: $filename"

# -- Store the current files that file
ls > "$filename"
echo ""
echo "***** Files: "
cat "$filename"

# -- Create the file to be released
cp "$filename" files.txt



