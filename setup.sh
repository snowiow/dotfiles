#!/usr/bin/bash

pwd=${PWD}

for dotfile in $pwd/dotfiles/*
do
    target=$HOME/.${dotfile##*/}
    echo Creating Symlink for: $dotfile to $target
    ln -s $dotfile  $target
done
