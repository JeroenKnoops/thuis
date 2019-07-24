# Thuis

My dotfiles

## Mac OS

### ssh

Make sure you've setup your `.ssh` directory

### Tools
iTerm2 : https://www.iterm2.com/version3.html

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install google-chrome visual-studio-code atom gitx
brew install fish stow git hub node tmux vim wget openssl libyaml libffi figlet toilet httpie jq rbenv thefuck direnv diff-so-fancy ncdu yarn prettyping
brew install docker docker-compose 
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
brew cask install java 
brew cask install slack 
brew cask install insomnia 
echo `which fish` >> /etc/shells
chsh -s `which fish`
cd $HOME
git clone --recursive git@github.com:jeroenknoops/thuis.git
cd $HOME/thuis
stow fish git iterm2 npm powerline vim yarn
fish
vim +BundleInstall +qall
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
mkdir $HOME/.nvm
```

### iTerm settings
Load configuration from file.
General > Load preferences from a custom folder or URL: ~/thuis/profile

## TODO

Add fork.dev
