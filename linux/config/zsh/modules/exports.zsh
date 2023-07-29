#!/usr/bin/env bash

export EDITOR=lvim
export GOPATH=$HOME/.local/go
export GOBIN=$GOPATH/bin

export SSH_KEY_PATH="~/.ssh/rsa_id"
export BROWSER=lynx
export ONEPASS_FZF_COMPLETE=true
export VISUAL=lvim
export EDITOR=lvim

export HISTCONTROL=ignoreboth
# export TERM=xterm-256color
export RANGER_LOAD_DEFAULT_RC=FALSE
export HOMEBREW_NO_AUTO_UPDATE=1
export AWS_PAGER=
export GIT_PAGER=cat
export LESS="-F -X $LESS"
export CLICOLOR=1

paths="
$GOBIN
/usr/local/opt/coreutils/bin
$HOME/.local/bin
$HOME/Documents/bin
/usr/local/bin
$HOME/.local/bin
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
$HOME/.npm-global/bin
"

fpaths=$(echo $paths | tr '\n' ':' | sed -e "s/^://g;s/::$//g")
export PATH=$fpaths:$PATH


