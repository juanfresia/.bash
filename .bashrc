## Enable append to history file instead of overwrite
shopt -s histappend

## Save history after every command
HISTORY_PROMPT_COMMAND='history -a; history -n'
if [[ -n "$PROMPT_COMMAND" ]]; then
    export PROMPT_COMMAND="$PROMPT_COMMAND; $HISTORY_PROMPT_COMMAND"
else
    export PROMPT_COMMAND="$HISTORY_PROMPT_COMMAND"
fi

## Set up aliases
alias ls="ls --color=auto"

## Set up ls colors
if [[ -r ~/.dircolors ]]; then
    eval "$(dircolors -b ~/.dircolors)"
fi

if [[ -r ~/.bashrc.d ]]; then
    for file in ~/.bashrc.d/*.bashrc; do
        source $file
    done
fi

# Configure bash-completion
# For Mac: downloaded with `brew install bash-completion` and located at /usr/local/etc/bash_completion.d
BASH_COMPLETION_SCRIPT="/usr/local/etc/profile.d/bash_completion.sh"
if [[ -r "${BASH_COMPLETION_SCRIPT}" ]]; then
    source ${BASH_COMPLETION_SCRIPT}
fi

## Source git-prompt.sh to have access to __git_ps1
GIT_PROMPT_FILE=~/.bash_completion.d/git-prompt.sh
if [[ -r ${GIT_PROMPT_FILE} ]]; then
    source ${GIT_PROMPT_FILE}
    PS1_GIT="${C3}\$(__git_ps1 '[%s]')"
fi

## Bash prompt art!
C0='\[\e[0m\]' # Normal
C1='\[\e[0;38;5;172m\]' # Orange
C2='\[\e[0;38;5;215m\]' # Beige
C2B='\[\e[0;38;5;209m\]' # Soft Beige
C3='\[\e[0;38;5;173m\]' # Pinkish

PS1_TIME="${C1}[\t]"
PS1_UHD="${C2}[\u${C2B}@${C2}\h${C2B}:${C3}\W${C2}]"
PS1_USD="${C2}\$${C0} "

export PS1="${PS1_TIME}${PS1_UHD}${PS1_GIT}${PS1_USD}"

# Add to path
HOME_BIN="~/.bin"
export PATH="${PATH}:${HOME_BIN}"

