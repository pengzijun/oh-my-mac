#!/bin/bash

#  rbenv
brew install -v rbenv ruby-build rbenv-gem-rehash
eval "$(rbenv init -)" # 待确定当前运行shell
printf 'if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi\n' >> ~/.zshrc

# ruby
# irb support chinese
brew install -v readline
export CONFIGURE_OPTS="--disable-install-doc  --with-readline-dir=$(brew --prefix readline)"
rbenv install -kv 2.2.1
rbenv global 2.2.1

# gem
printf "gem: --no-document" >> ~/.gemrc
gem install rails

# Pow
curl -v get.pow.cx | sh
gem install powder
