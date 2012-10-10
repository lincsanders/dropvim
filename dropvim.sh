#!/bin/bash

echo "WARNING! This will attempt to delete the following files/folders:"
echo "~/.vimrc"
echo "~/.viminfo"
echo "~/.vim/"
echo "Please ensure you have moved these to your ~/Dropbox/dropvim/* folder, or backed them up in a seperate location, otherwise THEY WILL BE LOST."

while true; do
    read -p "Do you wish to continue [y/n]? " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

rm -rf ~/.vim ~/.vimrc ~/.viminfo

ln -s ~/Dropbox/dropvim/.vimrc ~/.vimrc
ln -s ~/Dropbox/dropvim/.vim ~/.vim
ln -s ~/Dropbox/dropvim/.viminfo ~/.viminfo
