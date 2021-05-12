#!/bin/sh

sleep .5
A=`ls $HOME/Pictures/.Curr\ Wallpaper/`
wal -i $HOME/Pictures/.Curr\ Wallpaper/$A
sh $HOME/.config/i3/generateRofi.sh
sudo wpg -a $HOME/Pictures/.Curr\ Wallpaper/$A
sudo wpg -s $A
sh $HOME/.config/i3/dunst.sh
