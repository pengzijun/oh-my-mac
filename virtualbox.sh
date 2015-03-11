#!/bin/bash

# version=4.3.24r98716
# ${version/r/-}  => 4.3.24-98716
# ${version%%r*}  => 4.3.24
# ${version##*r}  => 98716
# http://dlc-cdn.sun.com/virtualbox/4.3.24/Oracle_VM_VirtualBox_Extension_Pack-4.3.24-98716.vbox-extpack

brew cask install vagrant
brew cask install virtualbox

# vbox-extpack
version=$(VBoxManage -v)
host=http://dlc-cdn.sun.com/
filename="Oracle_VM_VirtualBox_Extension_Pack-${version/r/-}.vbox-extpack"
dest=~/Downloads/${filename}
curl -o ${dest} ${host}/virtualbox/${version%%r*}/${filename}
open ~/Download/{$filename}

