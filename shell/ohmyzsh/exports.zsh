# Make vim our default editor
export EDITOR=vim
export VISUAL=vim
export SVN_EDITOR=vim

# Less
export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'
export PAGER='less'
# Set the Less input preprocessor.
if type lesspipe.sh >/dev/null 2>&1; then
    export LESSOPEN='|lesspipe.sh %s'
fi
# pygments
if type pygmentize >/dev/null 2>&1; then
    export LESSCOLORIZER='pygmentize'
fi

# TLDR colors
export TLDR_COLOR_BLANK="white"
export TLDR_COLOR_NAME="cyan"
export TLDR_COLOR_DESCRIPTION="white"
export TLDR_COLOR_EXAMPLE="green"
export TLDR_COLOR_COMMAND="white"

export SSH_KEY_PATH="~/.ssh/rsa_id" # ssh path
export KEYTIMEOUT=1 # less delay between vi's insert and esc mode in zsh
export DEFAULT_USER=mikeshen # remove the stupid prompt when on my own device

# FZF TMUX
export FZF_TMUX=1

# Custom Path Stuff
export MYCONF="$HOME/Development/configs"
export SAND="$HOME/Development/sandbox"
export MINIMAL="$SAND/test"

### History ###

# how many total lines are allowed to be in your .bash_history file at startup / stored at the end of a session
HISTFILESIZE=1000000
HISTSIZE=1000000
SAVEHIST=$HISTSIZE
HISTFILE="$HOME/.zsh_history"
HISTCONTROL=ignorespace:ignoredups

