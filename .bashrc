#!/bin/bash

# Last modified: 2013/07/31

############
# Source
############

# If it exists and is readable, source ~/.bash_local
[ -r ~/.bash_local ] && . ~/.bash_local

# If it exists and is readable, source ~/.git-completion.bash
[ -r ~/.git-completion.bash ] && . ~/.git-completion.bash

############
# General
############

# Review commands with history expansion before executing
shopt -s histverify

# Append to the history file instead of overwriting it
shopt -s histappend

# Temporary file for deduplicating the history file
tmp_histfile="/tmp/.bash_history.$$" 

# Synchronize each history list with history file
function sync_history() {
    # Append the history list to the history file
    history -a

    # Remove duplicates from the history file, keeping the most recent copies
    if [[ -r "$HISTFILE" ]]; then
        reverse "$HISTFILE" | awk '!uniq[$0]++' | reverse > "$tmp_histfile"
        mv "$tmp_histfile" "$HISTFILE"
    fi

    # Clear the history list and read the history file
    history -c
    history -r
}

# Define colors
red="\033[31m"
green="\033[32m"
yellow="\033[33m"
reset="\033[m"

# Red user if root, green otherwise
[[ $UID -eq 0 ]] && UCOLOR="$red" || UCOLOR="$green"

# Red @host if connected via ssh, green otherwise
[[ -n "${!SSH_CONNECTION[@]}" ]] && HCOLOR="$red" || HCOLOR="$green"

# Red $ or # if non-zero exit status, normal otherwise
symbol='$([[ $? -ne 0 ]] && printf "%b" "$red_raw" || printf "%b" "$reset_raw")'

# Sync history before every prompt
export PROMPT_COMMAND='sync_history;'

# Set custom prompt
export PS1="\[${UCOLOR}\]\u@\[${HCOLOR}\]\h\[$yellow\] \[$yellow\]\W\[$reset\] \\$ "

############
# Variables
############

# Custom build path
export PATH=/usr/local/share/npm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin

# Ignore duplicates and commands that start with whitespace
export HISTCONTROL=ignoreboth


############
# Aliases
############

# Alias ls variations (for OS X and other systems, respectively)
if [ `uname -s` == "Darwin" ]; then
    alias la="ls -AbGhlp"
else
    alias la="ls -Abhlp --color=auto"
fi

# Alias for du (displays disk usage)
alias duck="du -cks ./* | sort -n"

# Alias grep to color matches by default
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
