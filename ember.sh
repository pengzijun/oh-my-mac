#!/bin/bash
export NVM_DIR="/Users/lemon/.nvm"
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/dist

brew install watchman
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install node
npm config set registry https://registry.npm.taobao.org
npm install -g ember-cli
npm install -g bower
npm install -g phantomjs-prebuilt
