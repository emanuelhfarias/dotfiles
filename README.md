dotfiles
========
Some personal scripts and dotfiles.

## First clone
```sh
git clone https://github.com/emanuelhfarias/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

## Vagrant Ruby Provisioning
This vagrant shell is provisioning:

rbenv + ruby-build + ruby 2.2.0 + bundler + tmux

Vagrantfile:
```sh
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.network "forwarded_port", guest: 3000, host: 3000 #WEBrick
  config.vm.provision "shell", path: "vagrant-provisioning.sh", privileged: false
end
```
The script must be in the same directory as Vagrantfile.
