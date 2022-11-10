#!/bin/bash

######
# i3 #
######
#rm -rf "$HOME/.config/i3"
#ln -s "$HOME/dotfiles/i3" "$HOME/.config"

#######
# ZSH #
#######
#mkdir -p "$HOME/.config/zsh"
#ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
#ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"

#########
# Fonts #
#########
#mkdir -p "$XDG_DATA_HOME"
#cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

#########
# Dunst #
#########
mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc"

#####
