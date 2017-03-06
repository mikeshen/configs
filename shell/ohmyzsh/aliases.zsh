########################################################################################################################
# General Shortcuts
########################################################################################################################

# shortenings
alias cl='clear'
alias :q='exit'
alias :Q='exit'
alias p='pushd'                                                              # push directory to stack and go to new dir
alias o='popd'                                                               # pop to last directory. Kind of like a back button
alias m='man'                                                                # i'm lazy af, ok?
alias tmux="tmux -2"
alias tm='tmux attach || tmux new'

# tools
alias more='less --shift 5 --ignore-case --chop-long-lines --RAW-CONTROL-CHARS --LONG-PROMPT'
alias more='less'
alias du='du -sh'                                                            # disk usage
alias dusort='command du -s * .* | sort -n'                                  # disk usage w/ sort
alias wcl='wc -l'                                                            # count line of text
alias shred='shred --remove'                                                 # really remove
alias gz='tar -xvzf'                                                         # unzips a tar gzipped file
alias view='pygmentize -g'
alias proc='ps aux | grep'
alias rsync='rsync -arP'

########################################################################################################################
# Build Tools
########################################################################################################################

alias mm='make'
alias mc='make clean'
alias mr='make run'
alias rctags='ctags -R --c++-kinds=+p --extra=+fq'                           # recursively run ctags with c++ info
alias gg='grep -nIi --exclude-dir ".git" --exclude "*~" --color'
alias ggr='grep -rnIi --exclude-dir ".git" --exclude "*~" --color'
alias agg='ag -SR --cpp --ignore=.git'

########################################################################################################################
# FILES / EDITING
########################################################################################################################

# editing shortcuts
alias vvim='$EDITOR ~/.vimrc'
alias vtmux='$EDITOR ~/.tmux.conf'
alias vbash='$EDITOR ~/.bashrc'
alias vzsh='$EDITOR ~/.zshrc'
alias valias='$EDITOR $ZSH/.aliases.zsh'

alias remind='cat $ZSH/.aliases.zsh|less'                                    # remind me what the aliases were again?

# verbose file/dir movement
alias rm='rm -v'
alias mv='mv -v'

alias l='ls -alFp'

# cd shortcuts
alias c='cd'
alias cc='cd $_' # got to last input arg, useful after running, say,
                 # "mkdir long/dir/name/here", then just cc to go the newly created directory
alias cb='cd -'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'

# specific cd directories
alias config='cd ~/Development/configs'
alias dev='cd ~/Development

########################################################################################################################
# GIT Shortcuts
########################################################################################################################
alias g='git'
alias gs='git status'
alias gst='git status -uno'
alias gcl='git clone'
alias gb='git branch'
alias gra='git remote add'
alias grr='git remote rm'
alias gch='git checkout'
alias gdis='git checkout --'
alias gc='git commit'
alias gco='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias ga='git add' # stage
alias gA='git add .' # stage all
alias gu='git reset HEAD' # unstage
alias gl='git log'
alias gd='git diff'
alias gdiff='git diff'
alias gdc='git diff --cached'
alias gds='git diff --stat'

# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"
# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

########################################################################################################################
# VIM
########################################################################################################################
# O - vertical splits
# X - don't connect ot X window
# u - custom vimrc
# --cmd - run cmd

alias vim='vim -O -X'
alias v='vim'
alias rmswap='rm $HOME/Development/configs/vim/cache/swap/*'

