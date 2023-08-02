# dotfiles

These are my personal dotfiles. I don't expect anyone else to install or use them so they may not be kept in working order.

The `.config` folder in this repo is intended to follow the same structure as the `.config` in the $HOME directory. Configs are just symlinked into the user's `$HOME/.config` by way of a script.

## Installation

### Mac

In the mac folder, the `brew_install` script installs most common programs, comment/delete what you don't want/need.

More importantly is the `make_links` script; This symlinks a bunch of stuff into your `.config` directory (if the folders don't already exist) and effectively installs neovim along with my configuration.

### Linux

My Void Linux dots are pretty ad-hoc atm, but not so complicated as to be unusable. Link everything into `$HOME/.config/` for the most part.
