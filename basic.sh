#!/bin/bash

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed '18s/^#[ \t]*\(DISABLE_AUTO_UPDATE\).*/\1="false"/' ~/.zshrc > ~/.zshrc-omztemp
mv -f ~/.zshrc-omztemp ~/.zshrc
sed '43s/^#[ \t]*\(HIST_STAMPS\).*/\1="yyyy-mm-dd"/' ~/.zshrc > ~/.zshrc-omztemp
mv -f ~/.zshrc-omztemp ~/.zshrc

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew Cask
brew tap caskroom/cask
