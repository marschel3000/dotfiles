#!/bin/bash

# Absolute path this script is in
SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)

HOSTNAME=$(uname -n)
PLATFORM=$(uname -s)

PARENT_DIRS=(
	".gnupg"
	".ssh"
)

LINK_TARGETS=(
	".vimrc"
	".gitconfig"
	".gitignore"
	".zshrc"
	".screenrc"
	".gnupg/gpg.conf"
	".ssh/config"
	".zsh"
)

# cleanup
echo $'\nRemove:'
	for ITEM in "${LINK_TARGETS[@]}"
	do
		rm -vrf "$HOME/$ITEM"
	done

echo $'\nMKDIR:'
	for ITEM in "${PARENT_DIRS[@]}"
	do
		mkdir -pv "$HOME/$ITEM/"
	done

echo $'\nLink:'
	for ITEM in "${LINK_TARGETS[@]}"
	do
		ln -v -s "$SCRIPTPATH/configs/$ITEM" "$HOME/$ITEM"
	done

	#if [[ "$PLATFORM" == 'Darwin' ]]; then
		# cp -r $SCRIPTPATH/configs/.config/osx_LaunchAgends/*.plist "$HOME/Library/LaunchAgents/"
	#fi