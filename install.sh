#! /bin/bash

BASH_COMPLETION_DIR=~/.bash_completion.d
mkdir -p ${BASH_COMPLETION_DIR}

# Get git-prompt
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O "${BASH_COMPLETION_DIR}/git-prompt.sh"

ln -s ~/.bash/.dircolors ~/.dircolors
ln -s ~/.bash/.bashrc ~/.bashrc
ln -s ~/.bash/.bash_profile ~/.bash_profile
