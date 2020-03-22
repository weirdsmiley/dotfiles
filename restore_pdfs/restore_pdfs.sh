#!/usr/bin/env bash

pdfslist="/home/neon/workspace/restore_pdfs/pdfs_list.txt"

# open each pdf
while read line;
do
	eval "okular \"$line\" > /dev/null 2>&1 &";
done < $pdfslist
