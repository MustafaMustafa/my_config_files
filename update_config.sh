#! /bin/bash

OPT0="--server"
OPT1="--local"

# current implementation is stupid

if [ -z "$1" ]; then 
	echo "usage: $0 [OPTION]"
	echo "OPTION are: $OPT0 or $OPT1"
	exit
elif [ "$1" = "$OPT0" ]; then
	git status
	cp -p ~/.vimrc vimrc
	cp -p ~/.bashrc bashrc
	cp -p ~/.gitconfig gitconfig
	cp -p ~/.astylerc astylerc
	cp -p ~/.config/terminator/config terminator_config
	git add * 
	git commit -m "diff it :P"
	git push
	git status
elif [ "$1" = "$OPT1" ]; then
	git status
	cp -p vimrc ~/.vimrc
	cp -p bashrc ~/.bashrc
	cp -p gitconfig ~/.gitconfig
	cp -p astylerc ~/.astylerc
	cp -p terminator_config ~/.config/terminator/config
else
	exit
fi
