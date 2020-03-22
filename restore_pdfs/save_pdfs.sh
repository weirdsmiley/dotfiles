#!/usr/bin/env bash

pdfslist="/home/neon/workspace/restore_pdfs/pdfs_list.txt"

# parse list using ps aux
ps aux | grep okular | awk '{for(i=12;i<=NF;i++){printf "%s ", $i}; printf "\n"}' | sed '/--colour/d' > $pdfslist
sed -i '/okular/d' $pdfslist


