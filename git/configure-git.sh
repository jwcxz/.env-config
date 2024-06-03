#!/bin/sh

alias gitconfig="git config --global"

gitconfig core.excludesfile "~/.gitignore_global"

gitconfig init.defaultBranch "main"

gitconfig color.ui true
gitconfig color.diff.meta "yellow normal bold"

gitconfig pull.ff only

gitconfig "branch.*branch-name*.rebase" true
gitconfig branch.autosetuprebase always

gitconfig alias.this "rev-parse --abbrev-ref HEAD"
gitconfig alias.hash "rev-parse --short HEAD"
gitconfig alias.lg "log --color --graph --pretty=format:'%C(red)%h%C(reset) -%C(yellow)%d%C(reset) %s %C(green)(%ci) %C(bold blue)<%an>%C(reset)' --abbrev-commit --abbrev=8"
gitconfig alias.lsb "!f() { git for-each-ref --sort=committerdate refs/heads/ --format='%1B[93m%(refname:short):%1B[92m%(committerdate:short):%1B[91m%(authorname)%1B[0m' | column -s':' -t ; }; f"
gitconfig alias.lsbb "for-each-ref --sort=committerdate refs/heads --format='%(refname:short)'"
gitconfig alias.lsbr "!f() { git for-each-ref --sort=committerdate refs/remotes/origin --format='%1B[93m%(refname:short):%1B[92m%(committerdate:short):%1B[91m%(authorname)%1B[0m' | column -s':' -t ; }; f"
gitconfig alias.lsbbr "for-each-ref --sort=committerdate refs/remotes/origin --format='%(refname:short)'"
