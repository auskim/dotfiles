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

# Sync history before every prompt
export PROMPT_COMMAND='sync_history;'
