#!/bin/bash

# Git
echo -n "Please input your git username: "
read username
echo -n "Please input your email: "
read email

git config --global user.name "${username}"
git config --global user.email ${email}
git config --global push.default simple

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask


# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed '18s/^#[ \t]*\(DISABLE_AUTO_UPDATE\).*/\1="false"/' ~/.zshrc > ~/.zshrc-omztemp
mv -f ~/.zshrc-omztemp ~/.zshrc
sed '43s/^#[ \t]*\(HIST_STAMPS\).*/\1="yyyy-mm-dd"/' ~/.zshrc > ~/.zshrc-omztemp
mv -f ~/.zshrc-omztemp ~/.zshrc
