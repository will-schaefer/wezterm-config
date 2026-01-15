# .zshrc - Initialized for Zsh + Starship migration

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory sharehistory

# Basic keybindings (emacs mode)
bindkey -e

# Load completions
autoload -Uz compinit
compinit

# Starship initialization (will be refined in next task)
if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi
