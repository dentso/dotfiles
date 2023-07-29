
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files'
    export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
# source $HOME/.oh-my-zsh/custom/plugins/fzf-tab-completion/zsh/fzf-zsh-completion.sh
# only aws command completion
zstyle ':completion:*:*:aws' fzf-search-display true
zstyle ':completion:*' fzf-search-display true
zstyle ':autocomplete:list-choices:*' min-input 3
zstyle ':autocomplete:tab:*' completion select
zstyle ':autocomplete:tab:*' completion insert
zstyle ':autocomplete:tab:*' completion cycle
zstyle ':completion:*:*:aws' fzf-search-display true
zstyle ':bracketed-paste-magic' paste-init pasteinit
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
zstyle ':fzf-tab:*' switch-group ',' '.'


