#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo chown -R "$(whoami)" "$(brew --prefix)"/*
brew doctor
brew update
brew cask install homebrew/cask-versions/adoptopenjdk8
brew install zsh
brew install git git-extras lazygit tree htop zsh-syntax-highlighting clojure leiningen z shellcheck nvm tldr fortune cowsay lolcat asciiquarium
brew cask install iterm2 visual-studio-code docker postman charles spectacle clipy

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

touch /etc/environment
{
    echo 'plugins=(common-aliases extract z git git-extras mercurial docker lein yarn npm colored-man-pages aws battery golang osx brew brew-cask zsh-syntax-highlighting catimg chucknorris)'
    echo 'source /etc/environment'
    echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
    echo 'export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters'
    echo 'ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)'
    echo "ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')"
    echo 'COMPLETION_WAITING_DOTS="true"'
} >> ~/.zshrc

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s "$(which zsh)"
