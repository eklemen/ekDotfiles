#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\033[00;33m'
BLUE='\033[00;34m'
CYAN='\033[00;36m'

echo "${GREEN}Running OSX defaults scripts..."
sudo bash osx.sh
echo "Installing brew, cask, and packages..."
bash brew.sh

## Link vimrc
echo "Linking vimrc... bc reasons..."
ln -s vim/.vimrc ~/.vimrc

echo -e "Configuring git..."
bash gitSetup.sh

echo -e "Setting up zsh and prezto..."
preztoSetup.sh

echo -e "Setting up Ruby..."
rubySetup.sh

echo -e "Setting up NVM..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
echo -e "Installing Node..."
nvm install node
echo -e "Set NVM default by using:\n"
echo -e "nvm alias default vx.x.x"
read -ps "Press Enter to continue.\n"


# Setting php to use version 7 not 5
echo "A few manual things left to do..."
echo "Make sure we change the php settings${RESTORE}"
sudo bash phpSetup.sh