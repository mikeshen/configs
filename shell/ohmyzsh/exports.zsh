# Make vim our default editor
export EDITOR=nvim
export VISUAL=nvim
export SVN_EDITOR=nvim

### History ###

# how many total lines are allowed to be in your .bash_history file at startup / stored at the end of a session
HISTFILESIZE=10000000
HISTSIZE=100000
SAVEHIST=$HISTSIZE
HISTFILE="$HOME/.zsh_history"
HISTCONTROL=ignorespace:ignoredups
HISTIGNORE=' *:history*:rm*'

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
export TLDR_COLOR_BLANK='white'
export TLDR_COLOR_NAME='cyan'
export TLDR_COLOR_DESCRIPTION='white'
export TLDR_COLOR_EXAMPLE='green'
export TLDR_COLOR_COMMAND='white'

export SSH_KEY_PATH='~/.ssh/rsa_id' # ssh path
export KEYTIMEOUT=1 # less delay between vi's insert and esc mode in zsh
export DEFAULT_USER="$(whoami)" # remove the stupid prompt when on my own device

export FZF_TMUX=1 # we want to use tmux for fzf panes

# Custom cd variables
export MYCONF="$HOME/Development/configs"
export SAND="$HOME/Development/sandbox"
export DOWN="$HOME/Downloads"
export MINIMAL="$SAND/test"
export BUILDS="$HOME/Development/builds/bin"
export DRIVE="$HOME/drive"
export NOTES="$DRIVE/Notes"

# PATH
if [[ -n $IS_LINUX ]]; then
    PATH="$HOME/.fzf/bin"
    path-prepend '/snap/bin'
    path-prepend '/usr/local/games'
    path-prepend '/usr/games'
    path-prepend '/bin'
    path-prepend '/sbin'
    path-prepend '/usr/bin'
    path-prepend '/usr/sbin'
    path-prepend '/usr/local/bin'
    path-prepend '/usr/local/sbin'
    path-prepend '/home/osboxes/anaconda3/bin'
elif [[ -n $IS_MAC ]]; then
    PATH='/usr/local/git/current/bin'
    path-prepend '/Users/mikemikeshen/Library/Python/2.7/bin'
    path-prepend '/usr/local/bin'
    path-prepend '/usr/bin'
    path-prepend '/bin'
    path-prepend '/usr/local/sbin'
    path-prepend '/usr/sbin'
    path-prepend '/sbin'
fi
