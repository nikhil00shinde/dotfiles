#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#
alias fabric='fabric-ai'
autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
# # --- History Configuration (Must be first!) ---
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt APPEND_HISTORY

# --- Paths ---
export PATH="$HOME/.local/bin:$PATH"

# --- Integrations ---
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(bluefin-cli init zsh)" # bluefin-cli shell-config

# Atuin must be strictly last, AFTER history is configured
eval "$(atuin init zsh)"
