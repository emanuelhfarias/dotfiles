dotfiles
========
Some personal scripts and dotfiles.

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
It will download and install the last Sublime Text 2 and generate a gnome3 launcher.
On Mac this is not necessary, just download the .dmg file (in the main website) and install.

### Setup Sublime configs and plugins
First install Package Control: https://packagecontrol.io. Then, run: `ruby go.rb`

It will automatic install Sublime plugins and set configs. Reload Sublime to take effect.

## Uninstalling Sublime Text 2 on Debian
```sh
sudo ./UninstallSublime2Debian.sh
```