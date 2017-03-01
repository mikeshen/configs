#!/bin/sh

CONFIG_DIR=$(pwd | sed s#/scripts##)

# MAKE SYMLINKS

# vim
[ ! -f ~/.vimrc ] && ln -s "$CONFIG_DIR/vim/vimrc" ~/.vimrc

# tmux
[ ! -f ~/.tmux.conf ] && ln -s "$CONFIG_DIR/tmux/tmux.conf" ~/.tmux.conf
[ ! -f ~/.tmuxline ] && ln -s "$CONFIG_DIR/tmux/tmuxline" ~/.tmuxline

# git
[ ! -f ~/.gitconfig ] && ln -s "$CONFIG_DIR/git/gitconfig" ~/.gitconfig

# zshrc
[ ! -f ~/.zshrc ] && ln -s "$CONFIG_DIR/shell/ohmyzsh/zshrc" ~/.zshrc
[ ! -f "$ZSH/.aliases.zsh" ] && ln -s "$CONFIG_DIR/shell/ohmyzsh/aliases.zsh" "$ZSH/.aliases.zsh"
[ ! -f "$ZSH/.bindings.zsh" ] && ln -s "$CONFIG_DIR/shell/ohmyzsh/bindings.zsh" "$ZSH/.bindings.zsh"
[ ! -f "$ZSH/.checks.zsh" ] && ln -s "$CONFIG_DIR/shell/ohmyzsh/checks.zsh" "$ZSH/.checks.zsh"
[ ! -f "$ZSH/.exports.zsh" ] && ln -s "$CONFIG_DIR/shell/ohmyzsh/exports.zsh" "$ZSH/.exports.zsh"
[ ! -f "$ZSH/.funcs.zsh" ] && ln -s "$CONFIG_DIR/shell/ohmyzsh/funcs.zsh" "$ZSH/.funcs.zsh"
[ ! -f "$ZSH/.setopt.zsh" ] && ln -s "$CONFIG_DIR/shell/ohmyzsh/setopt.zsh" "$ZSH/.setopt.zsh"

