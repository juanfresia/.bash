#! /bin/bash

BASH_COMPLETION_DIR=~/.bash_completion.d
mkdir -p ${BASH_COMPLETION_DIR}

# Get git-prompt
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ${BASH_COMPLETION_DIR}/git-prompt.sh

mv ~/.bashrc ~/.bashrc.bak
cp ./.bashrc ~/.bashrc

mv ~/.bash_profile ~/.bash_profile.bak
cp ./.bash_profile ~/.bash_profile
