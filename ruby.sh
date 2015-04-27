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

rbenv install -l
echo -n "Please input ruby version: "
read version
rbenv install -kfv ${version}
rbenv global ${version}

# Gem
gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org
sudo gem install rubygems-update -V -N
update_rubygems
gem install rails -V -N
gem install powder -V -N

# Pow
curl -v get.pow.cx | sh
