#!/bin/bash
echo 'your file is '$1
touch ~/Dropbox/notes/$1
rm ~/Notes/*
ln -s ~/Dropbox/notes/* ~/Notes/
# ln -s ~/Dropbox/notes/someFile.txt ~/Notes/someFile.txt
