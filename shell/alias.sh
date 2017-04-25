# Alias variations (for OS X and other systems, respectively)
alias la="ls -AbGhlp"
alias tac="tail -r"

alias code="cd $CODE_DIR"

# Alias for du (displays disk usage)
alias duck="du -cks ./* | sort -n"

# Alias for history
alias hist="history | tail"

# Alias for sudo (allow sudo of other aliases)
alias sudo='sudo '

# Alias for editing notes
alias vnote="vim -c \"cd $NOTE_DIR\" $NOTE_DIR/masterlist"

# Aliases for showing and hiding files in finder
if [[ $OS == "Darwin" ]]; then
    alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
    alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
fi

