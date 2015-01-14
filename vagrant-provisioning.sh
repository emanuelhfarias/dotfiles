#!/bin/bash

# This vagrant shell is provisioning:
# rbenv + ruby-build + ruby 2.2.0 + bundler + Rails (last version)

# PS: The box must be Debian/Ubuntu based
# See more on RailsCast #292

sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev git &&

# installing rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv &&
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile &&
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile &&
source ~/.bash_profile &&

# installing ruby-build
cd ~
git clone https://github.com/sstephenson/ruby-build.git &&
cd ruby-build/
sudo ./install.sh &&

# compiling and installing Ruby 2.2.0 via rbenv + ruby-build
rbenv install 2.2.0 &&
rbenv rehash &&
rbenv global 2.2.0 &&

# installing bundler
gem install bundler &&

# installing
gem install rails &&
rbenv rehash