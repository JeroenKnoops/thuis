# Thuis

My dotfiles

## Mac OS

### ssh

Make sure you've setup your `.ssh` directory

### Tools
iTerm2 : https://www.iterm2.com/version3.html

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install google-chrome visual-studio-code atom
brew install fish stow git hub node tmux vim wget openssl libyaml libffi figlet toilet httpie jq rbenv thefuck direnv diff-so-fancy
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
brew cask install java 
echo `which fish` >> /etc/shells
chsh -s `which fish`
cd $HOME
git clone --recursive git@github.com:jeroenknoops/thuis.git
cd $HOME/thuis
stow fish git iterm2 npm powerline vim yarn
fish
vim +BundleInstall +qall
```

### iTerm settings
Load configuration from file.
General > Load preferences from a custom folder or URL: ~/thuis/profile
