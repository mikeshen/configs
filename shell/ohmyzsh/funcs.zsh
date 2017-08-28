## BASH FUNCTIONS ##

# remove item from $PATH
path-remove () {
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
path-append () {
  [ -d $1 ] || return 1    # make sure directory exists
  path-remove $1           # remove the directory
  export PATH=${PATH}:${1} # append the directory
}

# add item to beginning of $PATH, uniquely
path-prepend () {
  [ -d $1 ] || return 1     # make sure directory exists
  path-remove $1            # remove the directory
  export PATH=${1}:${PATH}  # append the directory
}

function ff() {
    find . -type f ! -ipath "*.git*" ! -ipath "*bin*" -iwholename '*'$*'*' ;
}

# check if a process is running
function psg() {
  ps ax | grep "$1" | grep -v grep
}

# source bashrc
function sb {
  SOURCEFILE=$HOME/.zshrc
  echo "source $SOURCEFILE"
  source $SOURCEFILE
}
