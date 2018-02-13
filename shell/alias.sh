# Alias variations (for OS X and other systems, respectively)
alias l="ls -AbFGhl"
alias tac="tail -r"
alias rg="rg --colors 'match:fg:blue' --colors 'match:style:intense' --colors 'line:fg:yellow' --colors 'path:fg:green' --colors 'match:style:bold' "

# Alias for du (displays disk usage)
# alias duck="du -cks $1 | sort -n"
duck () {
    du -cks $1 | sort -n;
}

# Alias for history
alias hist="history | tail"

# Alias for sudo (allow sudo of other aliases)
alias _='sudo '

# Alias for editing notes
alias vnote="vim -c \"cd $NOTE_DIR\" $NOTE_DIR/masterlist"

# Aliases for showing and hiding files in finder
if [[ $OS == "Darwin" ]]; then
    alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
    alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
fi

