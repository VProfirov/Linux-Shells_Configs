# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
	. /etc/prompt-utilities_profile.d/bash-promopt/ps-twtty-7.sh
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#FUNCTIONS
# add this configuration to ~/.bashrc
# Generic Bash' History specification
export HH_CONFIG=hicolor         # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"   # mem/file sync

# This is replacement for the default reverse-history-search with the cli-app 'hstr'
# You can find it at: https://github.com/dvorka/hstr
# Install-able with the dnf package manager
# if this is interactive shell, then bind hh to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hh -- \C-j"'; fi

# alias sudo='sudo ' alias-ation problem's solution
[ "$(type -t vi)" = 'alias' ] && unalias vi
[ "$(type -t vim)" = 'alias' ] && unalias vim
