#!/bin/bash

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i '' -e '43s/^#[ \t]*\(HIST_STAMPS\).*/\1="yyyy-mm-dd"/' ~/.zshrc
sed -i '' -e '18s/^#[ \t]*\(DISABLE_AUTO_UPDATE\).*/\1="false"/' ~/.zshrc
printf 'export LANG=en_US.UTF-8\n' >> ~/.zshrc
printf 'export LC_ALL=en_US.UTF-8\n' >> ~/.zshrc


# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew Cask
brew install -v caskroom/cask/brew-cask
