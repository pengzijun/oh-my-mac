#!/bin/bash

#  rbenv
brew install -v rbenv ruby-build rbenv-gem-rehash
eval "$(rbenv init -)" # 待确定当前运行shell
printf 'if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi\n' >> ~/.zshrc

# ruby
# optional, but recommended:
brew install openssl libyaml libffi

# irb support chinese
brew install -v readline
export RUBY_CONFIGURE_OPTS="--disable-install-doc  --with-readline-dir=$(brew --prefix readline)"

# ImageMagick
# 安裝 ImageMagick 需先有 X11 的 support,OSX 10.8 拿掉了...
# http://xquartz.macosforge.org/landing/

rbenv install -l
echo -n "Please input ruby version "
read version
rbenv install -kv ${version}
rbenv global ${version}

# gem
printf "gem: --no-document" >> ~/.gemrc
gem install rails

# Pow
curl -v get.pow.cx | sh
gem install powder
