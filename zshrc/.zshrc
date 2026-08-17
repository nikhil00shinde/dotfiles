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
export SHELL="/usr/bin/zsh"
# --- Integrations ---
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# Atuin must be strictly last, AFTER history is configured
eval "$(atuin init zsh)"

# --- Eza (ls replacement) Aliases ---
alias ls="eza --icons=always --color=always"
alias la="eza -a --icons=always --color=always"
alias ll="eza -lah --icons=always --color=always --group-directories-first"
alias lt="eza --tree --level=1 -a --icons=always --color=always"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
