# Path
# -----

export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin

# OCF utilities path
export PATH=/opt/ocf/bin:/opt/ocf/sbin:$PATH

# Miscellaneous
export PATH=~/.fzf/bin:/usr/texbin:~/.node/bin:/opt/X11/bin:$PATH

# fzf path
if [[ ! "$PATH" == *$HOME/.fzf/bin* ]]; then
  export PATH="$PATH:$HOME/.fzf/bin"
fi

# fzf man path
if [[ ! "$MANPATH" == *$HOME/.fzf/man* && -d "$HOME/.fzf/man" ]]; then
  export MANPATH="$MANPATH:$HOME/.fzf/man"
fi

# Variables

# Force all locale variables to standard
export LC_ALL=C

# Set terminal colors
export TERM=xterm-256color

# Determine operating system kernel
export OS=`uname -s`

# Personalized directories
export NOTE_DIR="~/Dropbox/Notational\ Data"
export CODE_DIR="~/Code"

# Modify fzf to use silver searcher
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
