########################################################################################################################
# General Shortcuts
########################################################################################################################

# shortenings
alias cl='clear'
alias :q='exit'
alias :Q='exit'
alias p='pushd'                                                                               # push directory to stack and go to new dir
alias o='popd'                                                                                # pop to last directory. Kind of like a back button
alias m='man'                                                                                 # i'm lazy af, ok?
alias tmux="tmux -2"
alias tm='tmux attach || tmux new'

# tools
alias du='du -sh'                                                                             # disk usage
alias dusort='command du -s * .*|sort -n'                                                     # disk usage w/ sort
alias wcl='wc -l'                                                                             # count line of text
alias shred='shred --remove'                                                                  # really remove
alias gz='tar -xvzf'                                                                          # unzips a tar gzipped file
alias ctags='ctags -R --c++-kinds=+p --extra=+fq'                                             # correct recursive ctags
alias proc='ps aux|grep'
alias rsync='rsync -arP'
alias colorscheme='wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh'   # choose your colorscheme

# view
alias less='less --shift 5 --ignore-case --chop-long-lines --RAW-CONTROL-CHARS --LONG-PROMPT'
alias more='less'
alias view='pygmentize -g'
alias vhist='history|vless'

# config aliases
alias valias='vim $ZSH/.aliases.zsh'
alias vzsh="$EDITOR ~/.zshrc"
alias vvim="$EDITOR ~/.vimrc"
alias remind='less $ZSH/.aliases.zsh'                                                         # remind me what the aliases were again?
alias remindgit='less ~/.gitconfig'                                                           # remind me what the git config was again?

########################################################################################################################
# Build Tools
########################################################################################################################

alias mm='make'
alias mc='make clean'
alias mr='make run'

########################################################################################################################
# Files / Editing
########################################################################################################################

# verbose file/dir movement
alias lrm='ls -R'
alias rm='rm -vI'
alias mv='mv -v'

# ls shortcuts
alias l='ls -alhFp'
alias la='ls -A'
alias lm='ls -alhrt' # show last modified file by reverse order

# search shortcuts
alias gg='grep -nIi --exclude-dir={.git,.svn} --exclude "*~" --color'
alias ggr='grep -rnIi --exclude-dir={.git,.svn} --exclude "*~" --color'
alias agg='ag -SR --cpp --ignore={.git,.svn}'
alias cg="find -L -regex '.*\.\(C\|H\|c\|h\|cpp\|hpp\)$' -not -regex '.*git.*' | xargs egrep --line-number"
alias xg="find -L regex '.*\.\(xml\)$' | xargs egrep --line-number"
alias pygrep-"find . -name '*.py' | xargs grep --line-number"

# cd shortcuts
alias c='cd'         # famous / infamous at this point
alias cc='cd $_'     # got to last input arg, useful after running, say,
                     # "mkdir long/dir/name/here", then just cc to go the newly created directory
		     #
alias cb='cd -'      # go to the last directory you just visited
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'

########################################################################################################################
# Git Shortcuts
########################################################################################################################
alias g='git'
alias gs='git status'
alias gst='git status -uno'
alias gcl='git clone'
alias gb='git branch'
alias gb='git branch --list'
alias gch='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gdis='git checkout --'
alias gunstage='git reset HEAD'
alias gun='gunstage'
alias gu='gunstage'
alias gc='git commit'
alias gco='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gh='git help'
alias gl='git log'
alias ga='git add' # stage
alias gA='git add .' # stage all
alias gpull='git pull'
alias gpl='gpull'
alias gp='gpull'
alias gpush='git push'
alias gps='gpush'
alias gdiff='git diff'
alias gd='gdiff'
alias gdc='git diff --cached'
alias gds='git diff --stat'
# stash
alias gss='git stash'
alias gsp='git stash pop'
alias gsl='git stash list'
alias gsd='git stash drop'
alias gfp='git format-patch'
alias gammend='git reset --soft HEAD~1'
alias gnuke='git reset --hard HEAD~1'
alias gdt='git difftool'
alias gdifflast='git diff HEAD~1'
# gsh shows the number of commits for the current repos for all developers
alias gcount="git shortlog | grep -E '^[ ]+\w+' | wc -l"

########################################################################################################################
# Vim
########################################################################################################################

# O - vertical splits
# X - do not connect to X window
# u - custom vimrc
# --cmd - run cmd

alias f='v $(fzf)'
alias vim='vim -O -X'
alias v='vim'
alias rmswap='rm $HOME/Development/configs/vim/cache/swap/*'

########################################################################################################################
# Custom Directories
########################################################################################################################

# specific cd directories
alias cdown='cd ~/Downloads'
alias config='cd ~/Development/configs'
alias cconf='config'
alias dev='cd ~/Development'
alias cdev='dev'
