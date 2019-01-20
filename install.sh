#!/usr/bin/env bash

export DOTFILES_PATH
DOTFILES_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s "$DOTFILES_PATH/.bash_profile" ~

# RC
ln -s "$DOTFILES_PATH/runcom/.bashrc" ~
ln -s "$DOTFILES_PATH/runcom/.inputrc" ~
ln -s "$DOTFILES_PATH/runcom/.vimrc" ~

# Config
ln -s "$DOTFILES_PATH/git/.gitconfig" ~
