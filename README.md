# Thuis

My dotfiles

## Mac OS

### Tools
iTerm2 : https://www.iterm2.com/version3.html

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install chrome
brew install fish stow git hub node tmux vim wget openssl libyaml libffi
chsh -s `which fish`
cd $HOME
git clone --recursive git@github.com:jeroenknoops/thuis.git
cd $HOME/thuis
stow git ruby tmux vim fish
fish
vim +BundleInstall +qall
```

