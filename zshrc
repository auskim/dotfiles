# TODO: zsh color scheme
# TODO: split for optimization?

# === Antigen ===
source $HOME/.shell/antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen-apply

eval "$(fasd --init auto)"

# === Prompt ===
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host='%{$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="%B[${user_host}:${current_dir}${git_branch}]
$ "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%} ‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"

# === Options ===
export LSCOLORS=exGxcxdxbxegedabagacad
export EDITOR=vim
set -o vi

setopt CORRECT
setopt HISTIGNOREDUPS
setopt EXTENDEDHISTORY
setopt APPENDHISTORY

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.shell/.zsh_history

# === Source ===
source $HOME/.profile
source $HOME/.shell/alias.sh

# fzf Key bindings
[ -f ~/.shell/fzf.zsh ] && source ~/.shell/fzf.zsh
