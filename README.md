dotfiles
========
Some scripts and dotfiles.

## First clone
```sh
git clone https://github.com/emanuelhfarias/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

## Installing Sublime Text 2 on Debian
Since Debian don't bring the package, run:
```sh
sudo ./SetupSublime2Debian.sh
```
On Mac this is not necessary, just download the .dmg file (in the main website) and install.

### Setup Sublime configs and plugins 
```sh
ruby go.rb
```

## Uninstalling Sublime Text 2 on Debian
```sh
sudo ./UninstallSublime2Debian.sh
```