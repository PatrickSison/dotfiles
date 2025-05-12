#! /usr/bin/bash

current_tools=(
	# linux
	"linux"

	# terminal
	"alacritty"
	"zsh"
	"tmux"

	# desktop
	# compositor
	"hypr"
	# notifications
	"dunst"
	# toolbar
	"waybar"
	
	# editor
	"nvim"
)

for config in "${current_tools[@]}";
do
	echo "Adding $config"
	stow $config
done
