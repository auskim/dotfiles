BASE_DIR=~/.fzf
# Setup fzf
# ---------
if [[ ! "$PATH" == *$BASE_DIR/bin* ]]; then
  export PATH="$PATH:$BASE_DIR/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$BASE_DIR/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$BASE_DIR/shell/key-bindings.zsh"

