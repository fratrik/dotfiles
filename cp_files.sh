#!/bin/bash

path=$(pwd)
echo $path
for file in _*
do
    dotname=.${file:1}
    echo $dotname

    if [[ -f ~/$dotname ]]
    then
        if [ $(readlink ~/$dotname) -a $(readlink ~/$dotname) == $path/$file ]
        then
            echo continued $dotname
            continue
        fi

        backup=$dotname.bak
        while [[ -f ~/$backup ]]
        do
            backup=$backup.bak
        done
        mv ~/$dotname ~/$backup
        echo $backup
    fi
    ln -s $path/$file ~/$dotname
done

