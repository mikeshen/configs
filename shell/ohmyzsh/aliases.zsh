########################################################################################################################
# General Shortcuts
########################################################################################################################

# shortenings
alias cl='clear'
alias lc='cl'                                                                                 # cause i'm retarded
alias :q='exit'
alias :Q='exit'
alias p='pushd'                                                                               # push directory to stack and go to new dir
alias o='popd'                                                                                # pop to last directory. Kind of like a back button
alias m='man'                                                                                 # i'm lazy af, ok?
alias sxargs='xargs -l zsh -c'
alias b='bat'

# tools
alias du='du -sh'                                                                             # disk usage
alias dusort='command du -s * .*|sort -n'                                                     # disk usage w/ sort
alias wcl='wc -l'                                                                             # count line of text
alias shred='shred --remove'                                                                  # really remove
alias gz='tar -xvzf'                                                                          # unzips a tar gzipped file
alias ctags='ctags -R --c++-kinds=+p --extra=+fq'                                             # correct recursive ctags
alias proc='ps aux|grep'
alias rsync='rsync -arP'
alias tmux="tmux -2"
alias tm='tmux attach || tmux new'
alias colorscheme='wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh'   # choose your colorscheme

# pipe magic
alias less='less --shift 5 --ignore-case -imS'
alias LL='less'
alias more='less'
alias view='pygmentize -g'
alias hless='history|less'
alias pipey='while read line; do count=1; out=$(echo "$line"|tr "|" "\n"); echo $out|while IFS= read -r i; do echo "$count $i"; count=$((count+1)); done; echo "----------------------------------------------------------------------------------------------------"; done'
alias trl='tr "," "|"'
alias pargs='xargs -I{}'

# explicatives
alias fuckthis='exit'
alias shit='cl'
alias fuck='cl'

# copy/paste
alias yank='yank-cli -- xsel -b'
alias xc='xclip -selection clipboard'
########################################################################################################################
# Files / Editing
########################################################################################################################

# verbose file/dir movement
alias lrm='ls -R'
alias rm='rm -v'
alias mv='mv -v'

# ls shortcuts
alias l='ls -alhFp'
alias la='ls -A'
alias lm='ls -alhrt' # show last modified file by reverse order
alias sl='ls'

# search shortcuts
alias gg='grep -nIi --exclude-dir={.git,.svn} --exclude "*~" --color'
alias ggr='grep -rnIi --exclude-dir={.git,.svn} --exclude "*~" --color'
alias aga='ag -SR  --ignore={.git,.svn}'
alias agg='ag -SR --ignore={.git,.svn}'
alias aggj='ag -SR --java --ignore={.git,.svn}'
alias agg2b='ag -SR --ignore={.git,.svn} -B 2'
alias agg2a='ag -SR --ignore={.git,.svn} -A 2'
alias agg2ab='ag -SR --ignore={.git,.svn} -A 2 -B 2'
alias agg5b='ag -SR --ignore={.git,.svn} -B 5'
alias agg5a='ag -SR --ignore={.git,.svn} -A 5'
alias agg5ab='ag -SR --ignore={.git,.svn} -A 5 -B 5'
alias cg="find -L -regex '.*\.\(C\|H\|c\|h\|cpp\|hpp\)$' -not -regex '.*git.*' | xargs egrep --line-number"
alias xg="find -L regex '.*\.\(xml\)$' | xargs egrep --line-number"
alias hgrep='history|agg'
alias pygrep-"find . -name '*.py' | xargs grep --line-number"

# generic cd shortcuts
alias c='cd'         # famous / infamous at this point
alias cc='cd $_'     # got to last input arg, useful after running, say,
                     # "mkdir long/dir/name/here", then just cc to go the newly created directory
alias cb='cd -'      # go to the last directory you just visited
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'

########################################################################################################################
# Custom Directories
########################################################################################################################

# specific cd directories
alias dev='cd ~/Development'
alias cdev='dev'
alias cgm='dev'
alias config="cd $MYCONF"
alias csand="cd $SAND"
alias cbuilds="cd $BUILDS"
alias ctest="cd $MINIMAL"
alias cminimal='ctest'
alias cmin='ctest'
alias cdown="cd $DOWN"
alias cconf='config'
# alias cs='csand'
alias cbb='cbuilds'
alias cnotes="cd $NOTES"
alias cn="cnotes"

########################################################################################################################
# Build Tools
########################################################################################################################

alias mm='make'
alias mc='make clean'
alias mr='make run'

########################################################################################################################
# Version Control Systems (VCS)
########################################################################################################################

## GIT

alias g='git'
alias gs='git status'
alias gst='git status -uno'
alias gcl='git clone'
alias gb='git branch'
alias gbl='git branch --list'
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
alias ghunk='git add -p'
alias gh='ghunk'
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
alias gssh='git stash show -p'
alias gsd='git stash drop'
alias gfp='git format-patch --no-prefix'
alias gammend='git reset --soft HEAD~1'
alias gam='gammend'
alias gnukelast='git reset --hard HEAD~1'
alias gnuketil='git reset --hard'
alias gdt='git difftool'
alias gdifflast='git diff HEAD~1'
# gsh shows the number of commits for the current repos for all developers
alias gcount="git shortlog | grep -E '^[ ]+\w+' | wc -l"

########################################################################################################################
# Vim
########################################################################################################################

# O - vertical splits
# u - custom vimrc
# --cmd - run cmd

alias vim='nvim'
alias v='vim'
alias f='v $(fzf)'
alias rmswap='rm $HOME/Development/configs/vim/cache/swap/*'
alias rmswp='rmswap'
alias vnn="vim $DRIVE/index.md"

# config aliases
alias valias="$EDITOR $ZSH/.aliases.zsh"
alias vzsh="$EDITOR ~/.zshrc"
alias vvim="$EDITOR ~/.vimrc"
alias remind="bat $ZSH/.aliases.zsh"                                                         # remind me what the aliases were again?
alias remindgit='bat ~/.gitconfig'                                                           # remind me what the git config was again?

########################################################################################################################
# Conda
########################################################################################################################

alias spy='source $HOME/root/bin/activate'
alias sde='deactivate'

########################################################################################################################
# Rclone
########################################################################################################################

alias rdown="rclone sync Drive:Notes $DRIVE"
alias rup="rclone sync $DRIVE Drive:Notes"

########################################################################################################################
# Google Specific
########################################################################################################################

alias rpcreplay=/google/data/ro/teams/frameworks-test-team/rpcreplay-cli/live/rpcreplay
alias apido=/google/data/ro/teams/oneplatform/apido
alias goto="gcert && ssh -X mikemikeshen.c.googlers.com"
alias pp="gcert"

alias cdd="cd $GOOGLE3"
alias cgmb="cd $GOOGLE3/google/mybusiness"
alias cbgmb="cd $GOOGLE3/java/com/google/commerce/bizbuilder/gmbapi/boq"
alias cjg="cd $GOOGLE3/java/com/google/commerce/bizbuilder"
alias cjgt="cd $GOOGLE3/javatests/com/google/commerce/bizbuilder"

## Blaze

alias bbb='blaze build ...'
alias bbc='blaze clean'
alias btt='blaze test ...'
alias btc='blaze test conformance'

## G4

alias listw='g4 myclients'

## FIG

alias h='hg'
alias hs='hg status'
alias ha='hg add'
alias hps='hg presubmit'
alias hfi='hg fix'
alias hl='hg xl'
# workspaces
alias hwc='hg citc'
alias hwd='hg citc -d'
alias hwl='hg citc --list'
# commit / branches
alias hco='hg commit'
alias hhunk='hg commit -i'
alias hh='hg commit -i'
alias hcs='hg commit --same-cl'
alias hca='hg fix && hg commit'
alias hcu='hg uncommit'
alias hch='hg update'
alias hnext='hg next'
alias hprev='hg previous'
# rebase / drop
alias hrb='hg rebase'
alias hbm='hg cls-move --dest'
alias hbd='hg cls-drop -p -c'
# sync + upload
alias hpull='hg sync'
alias hpush='hg uploadchain'
alias hp='hg sync'
alias huc='hg uploadchain'
# diff
alias hdiff='hg diff'
alias hd='hg diff'
alias hdn='hg diff -c'
alias hdt='hg dt'
# shelve/unshelve
alias hss='hg shelve -n'
alias hsp='hg unshelve'
alias hsl='hg shelve -l'
alias hsd='hg shelve -d'
alias hsu='hss temp && hp && hsp temp'
# revert
alias hdis='hg revert'
alias hrev='hg revert'
# move copy delete
alias hmv='hg mv'
alias hcp='hg cp'
alias hrm='hg rm'

