#!/bin/bash

# Oh My Zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# 设置历史纪录时间格式
sed '43s/^#[ \t]*\(HIST_STAMPS\).*/\1="yyyy-mm-dd"/' ~/.zshrc > ~/.zshrc-omztemp
mv -f ~/.zshrc-omztemp ~/.zshrc
# 关闭自动更新
sed '18s/^#[ \t]*\(DISABLE_AUTO_UPDATE\).*/\1="false"/' ~/.zshrc > ~/.zshrc-omztemp
mv -f ~/.zshrc-omztemp ~/.zshrc

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew Cask
brew install -v caskroom/cask/brew-cask
