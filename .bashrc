#!/bin/bash

# Last modified: 29 Dec 14

############
# Setup
############

# Use vim key bindings in bash
set -o vi

# Determine OS
OS=`uname -s`

# Define colors
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
reset="\033[m"

############
# Source
############

# If it exists and is readable, source ~/.bash_local
[[ -r ~/.bash_local ]] && . ~/.bash_local

# If it exists and is readable, source ~/.git-completion.bash
[[ -r ~/.git-completion.bash ]] && . ~/.git-completion.bash

############
# Variables
############

# Force all locale variables to standard
export LC_ALL=C

# Set terminal colors
export TERM=xterm-256color

# Add data and time to history
export HISTTIMEFORMAT="%d/%m/%y %T "

# Custom build path
if [[ $OS == "Darwin" ]]; then
    export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
fi

export PATH=/opt/ocf/bin:/opt/ocf/sbin:/usr/sbin:$PATH
export PATH=/usr/texbin:~/.node/bin:/opt/X11/bin:$PATH
export PATH=/usr/local/etc:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# Ignore duplicates and commands that start with whitespace
export HISTCONTROL=ignoreboth

# Set history file size
export HISTSIZE=100

# Add color matches to grep by default
export GREP_OPTIONS="--color=auto"

#TODO: figure out termcap color options
# Add color options to less
#export LESS="--RAW-CONTROL-CHARS"
#[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

############
# Aliases
############

# Alias variations (for OS X and other systems, respectively)
if [[ $OS == "Darwin" ]]; then
    alias la="ls -AbGhlp"
    alias tac="tail -r"
else
    alias la="ls -Abhlp --color=auto"
fi

# Alias for du (displays disk usage)
alias duck="du -cks ./* | sort -n"

# Alias for history
alias hist="history 10"

# Alias for sudo (allow sudo of other aliases)
alias sudo='sudo '

# Aliases for showing and hiding files in finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

############
# History
############

# Review commands with history expansion before executing
shopt -s histverify

# Append to the history file instead of overwriting it
shopt -s histappend

# Allow editing of failed substitutions
shopt -s histreedit

# Temporary file for deduplicating the history file
tmp_histfile="/tmp/.bash_history.$$" 

# Synchronize each history list with history file
function sync_history() {
    # Append the history list to the history file
    history -a

    # Remove duplicates from the history file, keeping the most recent copies

    # IMPORTANT: OS X/BSD requires installation of coreutils pkg for tac
    # Available via homebrew/pkg_add respectively
    if [[ -r "$HISTFILE" ]]; then
        tac "$HISTFILE" | awk '!uniq[$0]++' | tac > "$tmp_histfile"
        mv "$tmp_histfile" "$HISTFILE"
    fi

    # Clear the history list and read the history file
    history -c
    history -r
}

############
# Prompt
############

# Red user if root, green otherwise
[[ $UID -eq 0 ]] && UCOLOR="$red" || UCOLOR="$green"

# Red @host if connected via ssh, green otherwise
[[ -n "${!SSH_CONNECTION[@]}" ]] && HCOLOR="$red" || HCOLOR="$green"

# Red $ or # if non-zero exit status, normal otherwise
symbol='$([[ $? -ne 0 ]] && printf "%b" "$red_raw" || printf "%b" "$reset_raw")'

# Sync history before every prompt
export PROMPT_COMMAND='sync_history;'

# Set custom prompt
export PS1="\[${UCOLOR}\]\u@\[${HCOLOR}\]\h\[$blue\] \[$blue\]\W\[$yellow\] \\$\[$reset\] "
