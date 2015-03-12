#!/bin/bash

# Software
brew cask install iterm2
brew cask install mou
brew cask install sublime-text
brew cask install atom
brew cask install shuttle
brew cask install evernote
brew cask install splayerx
brew cask install filezilla
brew cask install gimp
brew cask install neteasemusic
brew cask install baiduinput
brew cask install qq
brew cask install wechat
brew cask install aliwangwang
brew cask install libreoffice
brew cask install thunder
brew cask install baiducloud
brew cask install google-chrome
brew cask install keepassx
brew cask install sequel-pro
brew cask install xmind
brew cask install android-file-transfer

# baiduinput
baiduinput=/opt/homebrew-cask/Caskroom/baiduinput/*/安装百度输入法.app
if [ -d $baiduinput ]; then
  open $baiduinput
fi

