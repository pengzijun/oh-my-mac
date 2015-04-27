#!/bin/bash

# git command line tools
brew install tig

# ImageMagick
# 安裝 ImageMagick 需先有 X11 的 support,OSX 10.8 拿掉了...
# http://xquartz.macosforge.org/landing/
# brew install imagemagick

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
brew cask install dash

# baiduinput
baiduinput=/opt/homebrew-cask/Caskroom/baiduinput/*/安装百度输入法.app
if [ -d $baiduinput ]; then
  open $baiduinput
fi

