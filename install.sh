#!/usr/bin/env sh

dir=`pwd`

cd ~
for dotfile in .gitconfig .gitexcludes .vimrc .Xdefaults; do
	if [ -s $dotfile ]
	then
		cp -v $dotfile $dotfile.orig
		rm $dotfile
	fi
	
	echo "install: $dotfile"
	ln -s $dir/$dotfile $dotfile
done

cd $dir
