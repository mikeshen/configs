bindkey -v # add vi keybindings

# Restore certain emacs mode keybindings
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
# ctrl-w removed word backwards
bindkey '^w' backward-kill-word
# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward
bindkey '^s' history-incremental-search-forward
bindkey '^k' kill-whole-line # kill whole line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^d' delete-char
bindkey '^f' forward-char
bindkey '^b' backward-char
