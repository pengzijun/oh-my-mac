#!/bin/bash

#  rbenv
brew install -v rbenv ruby-build
rbenv init
printf 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi\n' >> ~/.zshrc

# ruby
# optional, but recommended:
brew install openssl libyaml libffi

# irb support chinese
brew install -v readline


rbenv install -l
echo -n "Please input ruby version: "
read version
export RUBY_CONFIGURE_OPTS="--disable-install-doc  --with-readline-dir=$(brew --prefix readline)"
rbenv install -v ${version}
rbenv global ${version}
rbenv shell ${version}

# Gem
gem sources -a https://ruby.taobao.org/
gem sources --remove https://rubygems.org/
gem install rails -V -N
gem install powder -V -N

# Bundle
bundle config 'mirror.https://rubygems.org' 'https://ruby.taobao.org' 

# Pow
curl -v get.pow.cx | sh
