#!/usr/bin/env bash

pdfslist="/home/neon/workspace/restore_pdfs/pdfs_list.txt"
icon="/usr/share/icons/hicolor/32x32/apps/firefox.png"
icon="/home/neon/workspace/restore_pdfs/icons/firefox.png"

# check if one line(pdf) or more
# if only one line then open in new-instance with -P "PDFs" profile
# if more then a while loop on rest after opening first new instance

pdfscount=$(wc -l $pdfslist | awk '{print $1}')
if [ $pdfscount -eq 1 ]
then
	# open new instance
	while read line;
	do
		eval "firefox --new-instance -P \"PDFs\" \"$line\" > /dev/null 2>&1 &"
	done < $pdfslist
	notify-send -i $icon "PDFs restoring!"

elif [ $pdfscount -gt 1 ]
then
	# open new tabs after opening first instance
	i=0;
	while read line;
	do
		if [ $i -eq 0 ]
		then
			eval "firefox --new-instance -P \"PDFs\" \"$line\" > /dev/null 2>&1 &"
			(( i = i + 1 ))
		else
			eval "firefox --new-tab -P \"PDFs\" \"$line\" > /dev/null 2>&1 &"
		fi
	done < $pdfslist
	notify-send -i $icon "PDFs restoring!"
else
	# warning for pdfslist
	notify-send -i $icon "No PDFs in the list"
fi
