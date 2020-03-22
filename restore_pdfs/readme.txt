# WHY?
These scripts are meant to be binded with i3wm. I have personally set two key-
bindings (inside i3_config, lines-84,85) for saving and restoring the pdfs so 
that after a reboot I could get back to what I was reading.

# HOW?
The utility is simple in sense that save_pdfs.sh greps out the pdfs' paths and
stores them in a pre-defined file location and restore_pdfs.sh executes the 
command to open those.

# CONSTRAINTS
I use okular as my pdf-viewer so you might wanna change that in the respective
scripts. And also you may want to change the default location for the file 
where the list of pdfs will get stored.
