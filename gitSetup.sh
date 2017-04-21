#!/bin/bash
git config --global user.name "eklemen"
git config --global user.email ejklemen@gmail.com
git config --global core.editor vim

echo -e "Set up git to use SSH..."
ssh-keygen -t rsa -b 4096 -C "ejklemen@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
echo -e "Copying ssh to clipboard..."
pbcopy < ~/.ssh/id_rsa.pub
echo -e "In github, settings -> SSH and GPG keys -> new SSH key/Add SSH key (paste here)"
read -p "Press Enter to launch Safari to github.com\n"
/Applications/Safari.app/Contents/MacOS/Safari & sleep 1 && osascript -e 'tell application "Safari" to open location "https://github.com/eklemen'
read -p "Press Enter once ssh was added and continue running scripts...\n"

echo -e "Symlinking global gitignore file..."
ln -s ~/ekDotfiles/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile '~/.gitignore_global'