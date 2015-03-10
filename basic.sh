# Oh My Zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
printf 'export LANG=en_US.UTF-8\n' >> ~/.zshrc # TODO: 使用sed替换

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Homebrew Cask
brew install -v caskroom/cask/brew-cask
