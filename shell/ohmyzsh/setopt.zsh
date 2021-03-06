### Basics ###
setopt no_beep # don't beep on error
setopt interactive_comments # Allow comments even in interactive shells 

### Changing Directories ###
setopt auto_cd # If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt pushd_ignore_dups # don't push multiple copies of the same directory onto the directory stack

### History ###
setopt append_history # Allow multiple terminal sessions to all append to one zsh command history
setopt extended_history # save timestamp of command and duration
setopt inc_append_history # Add comamnds as they are typed, don't wait until shell exit
setopt hist_expire_dups_first # when trimming history, lose oldest duplicates first
setopt hist_ignore_dups # Do not write events to history that are duplicates of previous events
setopt hist_ignore_space # remove command line from history list when first character on the line is a space
setopt hist_find_no_dups # When searching history don't display results already cycled through twice
setopt hist_reduce_blanks # Remove extra blanks from each command line being added to history
setopt hist_verify # don't execute, just expand history

### Completion ###
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word    
setopt auto_menu # show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_name_dirs # any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt chase_links # resolve symlinks
setopt complete_in_word # Allow completion from within a word/phrase

### Other ###
unsetopt menu_complete # do not autoselect the first completion entry
# setopt print_exit_value # print return value if non-zero
unsetopt hist_beep # no bell on error in history
unsetopt list_beep # no bell on ambiguous completion
unsetopt rm_star_silent # ask for confirmation on rm * style commands
