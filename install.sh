#! /bin/bash

BASH_COMPLETION_DIR=~/.bash_completion.d
mkdir -p ${BASH_COMPLETION_DIR}

# Get git-prompt
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ${BASH_COMPLETION_DIR}/git-prompt.sh

cp ./.dircolors ~/.dircolors
cp ./.bashrc ~/.bashrc
cp ./.bash_profile ~/.bash_profile
