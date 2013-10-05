#! /bin/bash

OPT0="--server"
OPT1="--local"
OPT2="--clone"

# current implementation is stupid

if [ -z "$1" ]; then 
	echo "usage: $0 [OPTION]"
	echo "OPTION are: $OPT0, $OPT1, $OPT2"
	exit
elif [ "$1" = "$OPT0" ]; then
	cp -p ~/.vimrc vimrc
	cp -p ~/.bashrc bashrc
	cp -p ~/.gitconfig gitconfig
	cp -p ~/.astylerc astylerc
	cp -p ~/.config/terminator/config terminator_config
	git status
	git add * 
	git commit -m "diff it :P"
	git push
elif [ "$1" = "$OPT1" ]; then
	git status
	cp -p vimrc ~/.vimrc
	cp -p bashrc ~/.bashrc
	cp -p gitconfig ~/.gitconfig
	cp -p astylerc ~/.astylerc
	cp -p terminator_config ~/.config/terminator/config
elif [ "$1" = "$OPT2" ]; then
	git clone git@bitbucket.org:mmustafa/my_config_files.git
else
	exit
fi
