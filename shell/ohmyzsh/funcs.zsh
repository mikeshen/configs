## BASH FUNCTIONS ##

# remove item from $PATH
function path-remove() {
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
    [ -d $1 ] || return 1    # make sure directory exists
    # path-remove $1           # remove the directory
    export PATH=${1}:${PATH} # append the directory
}

# add item to end of $PATH, uniquely
function ld-path-append() {
    [ -d $1 ] || return 1    # make sure directory exists
    export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${1} # append the directory
}

# add item to beginning of $PATH, uniquely
function ld-path-prepend() {
    [ -d $1 ] || return 1    # make sure directory exists
    export LD_LIBRARY_PATH=${1}:${LD_LIBRARY_PATH}  # append the directory
}

# cd to file's immediate directory
function cf() {
    [[ -n $1 ]] || return
    local filepath=$1
    filepath=`echo "$filepath" | rev | cut -d"/" -f2- | rev`
    cd $filepath
}

## FIND
function ff() {
    if [[ -n $2 ]]; then
        dir=$2
    else
        dir='.'
    fi

    find $dir -type f ! -ipath "*.git*" ! -ipath "*bin*" -iwholename '*'$1'*' ;
}
function fl() {
    if [[ -n $2 ]]; then
        dir=$2
    else
        dir='.'
    fi
    find $dir ! -ipath "*.git*" ! -ipath "*bin*" -type f -iname '*'"$1"'*' -ls | awk '{print $NF}'
}

function fa() {
    fl $1 $SAND
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

# convert time from seconds to D/H/M/S from now
function displaytime() {
    # can alias blah=echo "$TIME - $(date +%s)"|bc -l|displaytime
  local T=$1
  local D=$((T/60/60/24))
  local H=$((T/60/60%24))
  local M=$((T/60%60))
  local S=$((T%60))
  (( $D > 0 )) && printf '%d days ' $D
  (( $H > 0 )) && printf '%d hours ' $H
  (( $M > 0 )) && printf '%d minutes ' $M
  (( $D > 0 || $H > 0 || $M > 0 )) && printf 'and '
  printf '%d seconds\n' $S
}

# view next commit after the current checkout
function gnext() {
    git log --reverse --pretty=%H master | grep -A 1 $(git rev-parse HEAD) | tail -n1 | xargs git checkout
}

# source bashrc
function sb() {
    SOURCEFILE=$HOME/.zshrc
    echo "source $SOURCEFILE"
    source $SOURCEFILE
}

# Good Template Functions, here for reference

function hfe() {
    local number=$1
    if [[ -n $2 ]]; then
        user=$2
    else
        user='sshen'
    fi

    set -xv
    host="$user@server$number"
    ssh $host
    set +xv
}

function getDate() {
    date="$(date +%Y/%m/%d)"
    echo $date
}

function getYear() {
    # example of pulling substr out of a string using awk
    # here we pull yr out of a line with yyyymmdd
    [[ -n $1 ]] || return
    local yr=`awk '{print substr($0,1,4) }' <<< $1`
    echo $yr
}

function flash() {
    [[ -n $1 ]] || return
    local src=$1
    local dst='s_rttqa@lq-njq-hfe10:/auto/rtt/common'
    set -xv
    rsync $src $dst
    set +xv
    # rsync'd, now add only the last foldername to the path we ssh to
    if [[ -d $src ]]; then
        src=`echo "$src"|sed "s|.*/||g"`
        ssh -t s_rttqa@lq-njq-hfe10 "cd /auto/rtt/common/$src; exec \\$SHELL --login"
    elif [[ -f $src ]]; then
        ssh -t s_rttqa@lq-njq-hfe10 "cd /auto/rtt/common/; exec \\$SHELL --login"
    fi
}

function dl() {
    if [[ ! -n $1 ]]; then
        echo "saves logs from blah"
        echo "dl {yyyymmdd} {keyword}"
        return
    elif [[ ! -n $2 ]]; then
        echo "saves logs from blah"
        echo "dl {yyyymmdd} {keyword}"
        return
    fi

    # extract each file
    for var in $(find $(1) -type f -iname '*'"$2"'*.xz' -ls | awk '{print $NF}')
    do
        local src="`echo $var|sed "s|.*/||g"|sed "s|\.xz||g"`"
        xz -dk --stdout $var > $src
    done
}

function countdown() {
    date1=$((`date +%s` + $1));
    while [ "$date1" -ge `date +%s` ]; do
        echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
        sleep 0.1
    done
}

function stopwatch() {
    date1=`date +%s`;
    while true; do
        echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
        sleep 0.1
    done
}

# GOOGLE SPECIFIC FUNCTIONS
function dd() {
    [[ -n $1 ]] || return
    local project_name=$1
    export GOOGLE3="/google/src/cloud/mikemikeshen/$project_name/google3"
    g4d $project_name
}

# jump to file under GOOGLE3
function jj() {
    [[ -n $1 ]] || return
    local filepath=$1
    filepath=`echo "$filepath"|sed "s|//depot/google3/||g"`
    vim "$GOOGLE3/$filepath"
}

# jump to folder under GOOGLE
function jf() {
    [[ -n $1 ]] || return
    local filepath=$1
    filepath=`echo "$filepath"|sed "s|//depot/google3/||g"`
    filepath=`echo "$filepath" | rev | cut -d"/" -f2- | rev`
    cd "$GOOGLE3/$filepath"
}
