# general shortcuts
alias vim='vim -O -X' # allows opening multiple files stacked
alias v='vim'
alias cl='clear'
alias :q='exit'
alias :Q='exit'
alias p='pushd' # push directory to stack and go to new dir
alias o='popd' # pop to last directory. Kind of like a back button
alias m='man' # i'm lazy af, ok?
alias du='du -sh'
alias dusort='command du -s * .* | sort -n'
alias wcl='wc -l'
alias shred='shred --remove'
alias gz='tar -xvzf' # unzips a tar gzipped file
alias gg='grep -rnIi --exclude-dir ".git" --exclude "*~" --color'

# tmux related
alias tmux="tmux -2"
alias tm='tmux attach || tmux new'

# less changes
alias more='less'

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

# ls shortcuts
alias l='ls -alFp'

# editing shortcuts
alias vvim='$EDITOR ~/.vimrc'
alias vtmux='$EDITOR ~/.tmux.conf'
alias vbash='$EDITOR ~/.bashrc'
alias vzsh='$EDITOR ~/.zshrc'
alias valias='$EDITOR $ZSH/.aliases.zsh'

# verbose file/dir movement
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'

# alias to cat this file to display
alias acat='< ~/.zsh/aliases/zsh'

### git shortcuts ###
alias g='git'
alias gs='git status'
alias gcl='git clone'
alias gb='git branch'
alias gra='git remote add'
alias grr='git remote rm'
alias gch='git checkout'
alias gdiss='git checkout --'
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias ga='git add' # stage
alias gA='git add .' # stage all
alias gu='git reset HEAD' # unstage
alias gl='git log'
alias gd='git diff --cached'
alias gds='git diff --stat'
alias gdiff='git diff --cached'

# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"
# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"
