#!/usr/bin/env bash
# Inform script status & shell Inform
echo Running in $SHELL

function fd_arg {
    local file=$(fd "$1")
    local e="e"
    local p="p"
    if [[ -n $file ]]; then
        echo "[E]dit or [P]review?"
        read a
        if [[ $a == $e ]]; then
            $EDITOR "$file"
        elif [[ $a == $p ]]; then
            cat "$file"
        fi
    fi
}
fd_arg $1


function fd_fzf {
    echo "fzap file lister"
    local file=$(
        fd --type d | \
        fzf --query="$1" --no-multi --select-1 --exit-0 \
        --preview "tree -C {} | head -100"
    )
    if [[ -n $file ]]; then
        $EDITOR "$file"
    fi
}

# fd_fzf 

# alias fzap="fd_fzf"

# https://bluz71.github.io/2018/11/26/fuzzy-finding-in-bash-with-fzf.html

# https://mike.place/2017/fzf-fd/
    ## Set these environment variables
        # export FZF_DEFAULT_COMMAND="fd . $HOME"
        # export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
        # export FZF_ALT_C_COMMAND="fd -t d . $HOME"
    
    ## Done. You can now press
        # CTRL-T to fuzzily search for a file or directory in your home directory then insert its path at the cursor
        # ALT-C to fuzzily search for a directory in your home directory then cd into it
        # CTRL-R to fuzzily search your command line history then run an old command


function query_greet {
    greeting=Hello
    name=$((whoami))
    echo $greeting $name
}

function query_sum {
    echo "Enter a number"
    read a
    echo "Enter a number"
    read b
    var=$((a+b))
    echo $var
}

# function list_mountpoints_tmpfs_in_name {
function list_tmpfs {
    var=`df -h | grep tmpfs`
    echo $var
}
# list_tmpfs 

# ./script arg1 arg2
function get_arg {
    for x in $@
    do
    echo "Entered arg is $x"
    done
}
# get_arg $1 $2

