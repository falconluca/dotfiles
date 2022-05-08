#!/bin/bash

# TODO Create a link(~/.bash_profile) linking to file(~/dotfiles/.bash_profile)
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.bash_prompt ~/.bash_prompt
ln -s ~/dotfiles/.bash_bin ~/.bash_bin
ln -s ~/dotfiles/.bash_k8s ~/.bash_k8s
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.bash_darwin ~/.bash_darwin
ln -s ~/dotfiles/.bash_linuxgnu ~/.bash_linuxgnu

function install() {
    echo "Which Operating System do you like?"
    select os in Ubuntu LinuxMint Windows8 Windows7 WindowsXP; do
        case $os in
        "Ubuntu"|"LinuxMint")
            echo "I also use $os."
            ;;
        "Windows8" | "Windows10" | "WindowsXP")
            echo "Why don't you try Linux?"
            ;;
        *)
            echo "Invalid entry."
            break
            ;;
        esac
    done
}

# Install
# 1) install bash
# 2) chsh -> bash
#
# 0. Choose OS: macOS, CentOS, Ubuntu
# 1. Install Env
npm install -g hexo-cli
nrm
nvm

# env
mkdir ~/dev
mkdir ~/bin

# plugins
#cp -r .hammerspoon ~/.hammerspoon

# debug tools: strace, gdb, cc, gcc

# 2. Install alias, functions
# 3. Install ...
# 4. logfile

# Uninstall
# TODO `rm` all

########################################################

cd "$(dirname "${BASH_SOURCE}")"

git pull origin master

function doBootstrap() {
    rsync --exclude ".git/" \
      --exclude ".DS_Store/" \
      --exclude ".osx/" \
      --exclude "bootstrap.sh/" \
      --exclude "README.md/" \
      -avh --no-perms . ~

    source ~/.bash_profile
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doBootstrap
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]]]; then
    doBootstrap
  fi
fi

unset doBootstrap
