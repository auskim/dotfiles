export FZF_DIR=$(dirname $(readlink -f `which fzf`))/..

# Setup fzf
# ---------
if [[ ! "$PATH" == *$FZF_DIR/bin* ]]; then
  export PATH="$PATH:$FZF_DIR/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$FZF_DIR/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$FZF_DIR/shell/key-bindings.zsh"

_fzf_compgen_path() {
    fd --hidden --follow --exclude ".git" . "$1"
}

_fzf_compgen_dir() {
    fd --type d --hidden --follow --exclude ".git" . "$1"
}
