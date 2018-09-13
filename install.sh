#!/usr/bin/env bash

export DOTFILES_PATH
DOTFILES_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# symlinks
ln -sfv "$DOTFILES_PATH/.bashrc" ~
ln -sfv "$DOTFILES_PATH/.bash_profile" ~
ln -sfv "$DOTFILES_PATH/.inputrc" ~
