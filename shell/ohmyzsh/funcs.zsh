## BASH FUNCTIONS ##

# remove item from $PATH
function path-remove () {
  local IFS=':'
  local NEWPATH
  for DIR in $PATH; do
    if [ "$DIR" != "$1" ]; then
      NEWPATH=${NEWPATH:+$NEWPATH:}$DIR
    fi
  done
  export PATH=${NEWPATH};
}

# add item to end of $PATH, uniquely
function path-append() {
  [ -d $1 ] || return 1    # make sure directory exists
  # path-remove $1           # remove the directory
  export PATH=${PATH}:${1} # append the directory
}

# add item to beginning of $PATH, uniquely
function path-prepend() {
  [ -d $1 ] || return 1     # make sure directory exists
  # path-remove $1            # remove the directory
  export PATH=${1}:${PATH}  # append the directory
}

# add item to end of $PATH, uniquely
function ld-path-append() {
  [ -d $1 ] || return 1    # make sure directory exists
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${1} # append the directory
}

# add item to beginning of $PATH, uniquely
function ld-path-prepend() {
  [ -d $1 ] || return 1     # make sure directory exists
  export LD_LIBRARY_PATH=${1}:${LD_LIBRARY_PATH}  # append the directory
}

function ff() {
  find . -type f ! -ipath "*.git*" ! -ipath "*bin*" -iwholename '*'$*'*' ;
}

function fl() {
  find . ! -ipath "*.git*" ! -ipath "*bin*" -type f -iname '*'"$*"'*' -ls | awk '{print $NF}'
}
# check if a process is running
function psg() {
  ps ax | grep "$1" | grep -v grep
}

# awk fields quickly
function ac() {
  local args="\$$1"
  local noise="noise"
  for var in "$@"
  do
    if [[ ! -z "$noise" ]]; then
      noise=""
    else
      args="$args\" \"\$$var"
    fi
  done
  awk -F'|' "{print $args}"
}

function acl() {
  local args="\$$1"
  local noise="noise"
  for var in "$@"
  do
    if [[ ! -z "$noise" ]]; then
      noise=""
    else
      args="$args\"\\n\"\$$var"
    fi
  done
  awk -F'|' "{print $args}"
}

# tr any delimiter to |
function trl() {
    local delimiter=$1
    tr "$delimiter" "|"
}

# convert time to days+hours+minutes+seconds
function displaytime {
    local T=$1
    local D=$((T/60/60/24))
    local H=$((T/60/60%24))
    local M=$((T/60%60))
    local S=$((T%60))
    [[ $D > 0 ]] && printf '%d days ' $D
    [[ $H > 0 ]] && printf '%d hours ' $H
    [[ $M > 0 ]] && printf '%d minutes ' $M
    [[ $D > 0 || $H > 0 || $M > 0 ]] && printf 'and '
  printf '%d seconds\n' $S
}

# view next commit after the current checkout
function gnext() {
    git log --reverse --pretty=%H master | grep -A 1 $(git rev-parse HEAD) | tail -n1 | xargs git checkout
}

# source bashrc
function sb {
  SOURCEFILE=$HOME/.zshrc
  echo "source $SOURCEFILE"
  source $SOURCEFILE
}
