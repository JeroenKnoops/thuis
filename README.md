# Thuis

My dotfiles

## Mac OS

### ssh

Make sure you've setup your `.ssh` directory

### Tools
iTerm2 : https://www.iterm2.com/version3.html

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install chrome vscode
brew install fish stow git hub node tmux vim wget openssl libyaml libffi figlet toilet
chsh -s `which fish`
cd $HOME
git clone --recursive git@github.com:jeroenknoops/thuis.git
cd $HOME/thuis
stow fish git npm vim yarn
fish
vim +BundleInstall +qall
```

