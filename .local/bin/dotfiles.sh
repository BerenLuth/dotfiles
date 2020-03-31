#!/bin/bash

REPO=~/.dotfiles

mkdir -p $REPO

mkdir -p $REPO/.local/bin
mkdir -p $REPO/.config/

cp ~/.local/bin/dotfiles.sh $REPO/.local/bin

cp ~/.zshrc $REPO
cp ~/.p10k.zsh $REPO
cp ~/.bashrc $REPO
cp ~/.vimrc $REPO
cp ~/.profile $REPO
cp ~/.condarc $REPO

cp -r ~/.config/rofi $REPO/.config
cp -r ~/.config/mxmaster $REPO/.config
cp -r ~/.config/caffeine  $REPO/.config
cp -r ~/.config/polybar  $REPO/.config

#echo "Do you want to upload them to git? [Y/n]"
#CHOICE=Y
#read CHOICE

#if [ $CHOICE = "y" ]; then
#    cd $REPO
#    ls -a
#    git add .
#    echo "What's the commit message?"
#    read MESSAGE
#    git commit -m $MESSAGE
#    git push
#fi

echo "All the dotfiles have been copied to $REPO!"
#notify-send "Dotfiles" "Dotfiles updated" -i terminal