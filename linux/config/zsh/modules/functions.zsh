#!/usr/bin/env bash
#-*- coding: utf-8 -*-

# ---------------------------------------------------------------------------------

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert "${OLD_SELF_INSERT}"
}

# ---------------------------------------------------------------------------------

# set promt path depth
prompt_dir() { prompt_segment blue "$CURRENT_FG" '%2~'; }

# disabling gpu for electron apps
slack() { open /Applications/Slack.app/ --args --disable-gpu; }
vscode() { open /Applications/Code.app/Contents/MacOS/Electron --disable-gpu; }
chrome() {
  open /Applications/Chrome.app/Contents/MacOS/"Google Chrome" \
    --disable-gpu-vsync \
    --blacklist-accelerated-compositing \
    --blacklist-webgl \
    --disable-accelerated-2d-canvas \
    --disable-accelerated-compositing \
    --disable-accelerated-layers \
    --disable-gpu-sandbox \
    --disable-accelerated-video;
}

vim() { nvim "$@" }
vi() { nvim "$@" }
bb() { open -a BBEdit "$@" }

