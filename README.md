# Dotfiles

My personal dotfiles for Fedora Atomic Managed with [GNU Stow](https://www.gnu.org/software/stow/).


## Packages 
| Package | Description |
| --- | --- |
| zshrc | Zsh shell config and aliases |
| nvim | Neovim config |
| tmux | Tmux config |
| starship | Starship Config |
| ghostty | Ghostty terminal emulator config |
| atuin | Atuin shell history sync config |

## Install 
```
git clone 
cd ~/dotfiles 
./install.sh
```


## Structure
```
dotfiles/
├── zshrc/
│   └── .zshrc
├── nvim/
│   └── .config/
│       └── nvim/
├── tmux/
│   └── .tmux.config
├── starship/
│   └── .config/
│       └── starship.toml
├── ghostty/
│   └── .config/
│       └── ghostty/
│           └── config
├── atuin/
│   └── .config/
│       └── atuin/
│           └── config.toml
└── install.sh
```


