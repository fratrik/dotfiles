#!/bin/bash

for file in _*
do
	path=$(readlink -f $file)
    dotname=.${file:1}

	if [[ -f ~/$dotname ]]
	then
        backup=$dotname.bak
        while [[ -f ~/$backup ]]
        do
            backup=$backup.bak
        done
		mv ~/$dotname ~/$backup
        echo $backup
    fi
    ln -s $path ~/$dotname
done

