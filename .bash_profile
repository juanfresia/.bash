# This is here to supress the bash deprecation warning in Mac OS Catalina.
# Since that version zsh is the default shell and changing it incurs in a 
# warning each time you use bash.
export BASH_SILENCE_DEPRECATION_WARNING=1

# Configure bash history
# - save timestamp for the comand
export HISTTIMEFORMAT="[%h-%d %H:%M:%S] "
# - save up to 10000 commands
export HISTSIZE=10000
# - ignore duplicated commands and lines starting with whitespace
export HISTCONTROL=ignoreboth:ignorespace

# Set up vim as default editor <3
export EDITOR="vim"

# Load ./bashrc
if [[ -r ~/.bashrc ]]; then
    source ~/.bashrc
fi
