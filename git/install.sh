#!/bin/sh

. `dirname $0`/../common/common.sh

copy_dotfiles_to_home

"`calling_script_dir`/configure-git.sh"
