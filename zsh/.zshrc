# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set plugins
plugins=(git copypath copyfile)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Theme
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# p10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Additional plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Key bindings
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# ---- Eza (better ls) -----
alias ls="eza --icons=always"
# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"
