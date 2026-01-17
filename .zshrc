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
export STARSHIP_CONFIG=$HOME/wezterm-config/starship.toml
if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi
# Auto-launch Tmux
# Ensure we are in an interactive shell, not already in tmux, and have tmux installed.
if [[ -z "$TMUX" ]] && [[ -n "$PS1" ]] && command -v tmux &> /dev/null; then
    # Attempt to attach to an existing session, or create a new one named 'main'
    # -u forces UTF-8
    exec tmux -u new-session -A -s main
fi
