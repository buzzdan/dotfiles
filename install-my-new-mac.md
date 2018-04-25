Update current OS to latest.
Change password
Intall the homebrew
brew cask install iterm2
Open iterm2
brew install zsh
install oh-my-zsh
Edit zshrc and add the fllowing plug-ins: 

plugins=(common-aliases extract z git git-extras mercurial docker lein yarn npm colored-man-pages aws battery golang osx brew brew-cask zsh-syntax-highlighting catimg chucknorris)

sudo vim /etc/environment
export TOKEN=

brew install git mercurial zsh-syntax-highlighting go clojure leiningen z shellcheck nvm tldr fortune cowsay lolcat asciiquarium
brew cask install caskroom/versions/java8 visual-studio-code docker postman charles rambox

Add to zshrc



source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red') # To have commands starting with `rm -rf` in red

mkdir ~/.nvm
mkdir ~/dev/go
cd ~/dev/go
mkdir bin;mkdir src; mkdir pkg

vscode extentions: 