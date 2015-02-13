#!/bin/bash

# This vagrant shell is provisioning:
# rbenv + ruby-build + ruby 2.2.0 + bundler + tmux

# PS1: The box must be Debian/Ubuntu based.
# PS2: This script is running as normal user (with sudo), NOT root. (privileged: false on Vagrantfile)
# PS3: Ignore the error messages about stdin.
# PS4: This script still doesn't support ZSH, only Bash.
# See the manual installation on RailsCast #292.

BASH_RC="$HOME/.bashrc" # rbenv is only add here when using Ubuntu, otherwise, ~/.bash_profile
RUBY_VERSION=2.2.0 # Choose your favorite version. List all available versions: rbenv install -l

echo "Updating repositories and installing build-essential and others dependencies ..."
sudo apt-get update &&
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev &&
sudo apt-get install -y zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev &&
sudo apt-get install -y git libsqlite3-dev &&
echo "build-essential - OK"

echo "installing rbenv ..."
git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv &&
EXPORT_PATH="export PATH='${HOME}/.rbenv/bin:$PATH'"
echo $EXPORT_PATH >> $BASH_RC &&
echo 'eval "$(rbenv init -)"' >> $BASH_RC &&
eval $EXPORT_PATH
eval "$(rbenv init -)"
echo "rbenv - OK"

echo "installing ruby-build ..."
cd $HOME && git clone https://github.com/sstephenson/ruby-build.git $HOME/.ruby-build && &&
cd .ruby-build/
sudo ./install.sh &&
echo "ruby-build - OK"

echo "compiling Ruby ..."
rbenv rehash &&
rbenv install $RUBY_VERSION &&
rbenv rehash &&
rbenv global $RUBY_VERSION &&
echo "Ruby - OK"

echo "installing bundler ..."
gem install bundler &&
rbenv rehash &&
echo "bundler - OK"

# tmux from Ubuntu Trusty repository
echo "installing tmux ..."
sudo apt-get install -y tmux &&
sudo ed -s /etc/apt/sources.list < <(printf '%s\n' 1i "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty main restricted" . wq) &&
sudo ed -s /etc/apt/sources.list < <(printf '%s\n' 1i "deb http://us.archive.ubuntu.com/ubuntu/ trusty main restricted" . wq) &&
sudo apt-get update &&
sudo apt-get install --only-upgrade tmux && # upgrade tmux
sudo sh -c 'sed -e "1,2d" < /etc/apt/sources.list' && # remove trusty repo
sudo apt-get update &&
echo "tmux - OK"

#echo "installing rails last version ..."
#gem install rails &&
#rbenv rehash
#echo "Rails - OK"

echo "Provisioning Complete!!!"