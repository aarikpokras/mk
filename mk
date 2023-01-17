#!/bin/sh
if [ $(cat __file) -z ]
then
clear
printf "\033[1;31mFatal Error:\033[1;37m No file provided.\033[0m\nmk help\n        Put the title in the first line of the file as a comment.\n        Name the file \033[1;37m__file\033[0m.\n        Make sure you're running mk in the directory that \033[1;37m__file\033[0m is in.\n"
else
clear
HEAD=$(cat __file | head -n 1)
HEAP=${HEAD#?}
printf "\033[1;32m$HEAP\033[0m\n"
cat __file | bash
fi
