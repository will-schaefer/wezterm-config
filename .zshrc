# .zshrc - Initialized for Zsh + Starship migration

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory sharehistory

# Basic keybindings (emacs mode)
bindkey -e

# Load completions
fpath=(~/.zsh/zsh-completions/src $fpath)
autoload -Uz compinit
compinit

# Source Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Starship initialization
if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi