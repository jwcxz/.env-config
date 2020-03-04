#!/bin/sh

function calling_script_dir() {
    echo `dirname $0`
}

function common_dir() {
    echo `calling_script_dir`/../common
}

function copy_dotfiles_to_home() {
    find `calling_script_dir` -iname ".*" -and -not -iname "." -and -not -name ".." -exec `common_dir`/safe_copy.sh "{}" "$HOME" \;
}
