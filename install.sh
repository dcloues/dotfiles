#!/usr/bin/env bash

dir=$(pwd)
files=$(ls -ad .*)
echo "installing: $files"

cd ~
for dotfile in $files; do
	echo "test: $dotfile"
	if [ -f $dir/$dotfile ]
	then
		if [ -h $dotfile ]
		then
			echo "Remove existing link: $dotfile"
			rm $dotfile
		fi

		if [ -s $dotfile ]
		then
			cp -v $dotfile $dotfile.orig
			rm $dotfile
		fi
		
		echo "install: $dotfile"
		ln -s $dir/$dotfile $dotfile
	fi
done

cd $dir
