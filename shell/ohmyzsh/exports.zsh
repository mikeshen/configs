# Make vim our default editor
export EDITOR=vim
export VISUAL=vim
export SVN_EDITOR=vim

# Less
export LESS='--ignore-case --raw-control-chars --long-prompt --chop-long-lines'
export PAGER='less'

export SSH_KEY_PATH="~/.ssh/rsa_id" # ssh path
export KEYTIMEOUT=1 # less delay between vi's insert and esc mode in zsh
export DEFAULT_USER=mikeshen # remove the stupid prompt when on my own device

### History ###

# how many total lines are allowed to be in your .bash_history file at startup / stored at the end of a session
HISTFILESIZE=1000000
HISTSIZE=1000000
SAVEHIST=$HISTSIZE
HISTFILE="$HOME/.zsh_history"
HISTCONTROL=ignorespace:ignoredups

