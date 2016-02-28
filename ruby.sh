#!/bin/bash

version=2.2.3

# https://github.com/rbenv/ruby-build/wiki
brew install openssl libyaml libffi readline

#  rbenv
brew install rbenv && eval "$(rbenv init -)"
printf 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi\n' >> ~/.zshrc

# ruby
export RUBY_BUILD_MIRROR_URL=https://ruby.taobao.org/mirrors/ruby/ruby-${version}.tar.bz2#
export RUBY_CONFIGURE_OPTS="--disable-install-doc  --with-readline-dir=$(brew --prefix readline)"
rbenv install ${version}
rbenv global ${version}
rbenv shell ${version}

# Gem
gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/
gem install rails  -N
gem install powder -N

# Bundle
bundle config 'mirror.https://rubygems.org' 'https://ruby.taobao.org'

# Pow
curl -v get.pow.cx | sh
