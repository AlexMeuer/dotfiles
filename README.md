# dotfiles

These are my personal dotfiles. I don't expect anyone else to install or use them so they may not be kept in working order. If you _are_ interesting in using them, let me know and I'll double-check the process for you.

The `.config` folder in this repo is intended to follow the same structure as the `.config` in the $HOME directory. Configs are just symlinked into the user's `$HOME/.config`.

## Installation

### Mac

Run `brew_install` then `make_links`. The brew installation script installs pretty much everything needed, including my `simple-bar` configuration of `Ubersicht` and VS Code extensions. The linking script just symlinks the config files to their relevant locations.

### Linux

My Void Linux dots are pretty ad-hoc atm, but not so complicated as to be unusable. Link everything into `$HOME/.config/` for the most part.
