#!/usr/bin/env bash

echo Running in "$SHELL"

function fd_arg {
    local file=$(fd "$1")
    local e="e"
    local p="p"
    if [[ -n $file ]]; then
        echo "[E]dit or [P]review?"
        # read without -r will mangle backslashes
        read -r a
        if [[ $a == "$e" ]]; then
            $EDITOR "$file"
        elif [[ $a == "$p" ]]; then
            cat "$file"
        fi
    fi
}
# Call the function
fd_arg $1
