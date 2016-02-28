#!/bin/bash

brew install tig
brew install hub
brew cask install iterm2
brew cask install launchrocket

brew cask install atom && (
  apm install ember-cli-helper
  apm install ember-tabs
)
brew cask install vagrant virtualbox virtualbox-extension-pack

brew cask install baiduinput && (
  open /opt/homebrew-cask/Caskroom/baiduinput/*/安装百度输入法.app
)

brew cask install mou
brew cask install splayerx
brew cask install neteasemusic
brew cask install qq
brew cask install aliwangwang
brew cask install thunder
brew cask install baiducloud
brew cask install google-chrome
brew cask install keepassx
brew cask install the-unarchiver
