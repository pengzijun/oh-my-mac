#!/bin/bash

# Oh My Zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# command line 中文显示
printf 'export LANG="zh_CN.UTF-8"\n' >> ~/.zshrc
printf 'export LC_ALL="zh_CN.UTF-8"' >> ~/.zshrc


# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Homebrew Cask
brew install -v caskroom/cask/brew-cask
