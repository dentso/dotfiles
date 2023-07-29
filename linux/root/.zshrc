# # Created by Zap installer
# [ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
# plug "zsh-users/zsh-autosuggestions"
# plug "zap-zsh/supercharge"
# plug "zap-zsh/zap-prompt"
# plug "zsh-users/zsh-syntax-highlighting"

# # Load and initialise completion system
# autoload -Uz compinit
# compinit
#

BREW_PATH=/home/linuxbrew/.linuxbrew/share
safeload() {
  [ -f $1 ] && source $1
}

safeload $HOME/.config/zsh/modules/zap.zsh
safeload $BREW_PATH/zsh-history-substring-search/zsh-history-substring-search.zsh
safeload $BREW_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
safeload $BREW_PATH/zsh-autocomplete/zsh-autocomplete.plugin.zsh

safeload $HOME/.config/zsh/modules/aliases.zsh
safeload $HOME/.config/zsh/modules/exports.zsh

safeload $BREW_PATH/autojump/autojump.zsh
safeload $HOME/.config/zsh/modules/1password.zsh
safeload $HOME/.config/zsh/modules/nvm.zsh
safeload $HOME/.config/zsh/modules/autocompletion/all.zsh
safeload $HOME/.config/zsh/modules/fzf.zsh

bindkey '^?' backward-delete-char
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

