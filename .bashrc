#!/bin/bash

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

# Source extra scripts
for config in "$HOME"/.shell/*.sh "$HOME"/.shell/*.bash; do
    source $config
done
unset -v config

############
# Variables
############

# Force all locale variables to standard
export LC_ALL=C

# Set terminal colors
export TERM=xterm-256color

# Add data and time to history
export HISTTIMEFORMAT="%d/%m/%y %T "

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
# History
############

# Review commands with history expansion before executing
shopt -s histverify

# Append to the history file instead of overwriting it
shopt -s histappend

# Allow editing of failed substitutions
shopt -s histreedit

# Set history file location
export HISTFILE=~/.shell/.bash_history

############
# Prompt
############

# Red user if root, green otherwise
[[ $UID -eq 0 ]] && UCOLOR="$red" || UCOLOR="$green"

# Red @host if connected via ssh, green otherwise
[[ -n "${!SSH_CONNECTION[@]}" ]] && HCOLOR="$red" || HCOLOR="$green"

# Red $ or # if non-zero exit status, normal otherwise
symbol='$([[ $? -ne 0 ]] && printf "%b" "$red_raw" || printf "%b" "$reset_raw")'

# Set custom prompt
export PS1="\[${UCOLOR}\]\u\[$yellow\]@\[${HCOLOR}\]\h\[$blue\] \[$blue\]\W\[$yellow\] \\$\[$reset\] "
