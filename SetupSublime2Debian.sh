#!/bin/bash

# Generate a launcher in Gnome3

# Make sure only root can run this script
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

sublime='Sublime Text 2.0.2 x64.tar.bz2'
if [ -f "$sublime" ]
then
    echo "$sublime found."
else
    wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2 &&
    echo "Sublime Text 2 64bits for Linux downloaded."
fi

tar -xvjf "$sublime" &&
mv "Sublime Text 2/" /opt/sublime-text-2/ &&
ln -s /opt/sublime-text-2 /usr/local/sublime-text-2 &&
ln -s /usr/local/sublime-text-2/sublime_text /usr/local/bin/sublime &&

# Creating the Launcher
touch /usr/share/applications/sublime.desktop &&
launcher="[Desktop Entry]\nType=Application\nEncoding=UTF-8\nName=Sublime Text 2\nComment=Best editor\nExec=sublime_text\nIcon=/opt/sublime-text-2/Icon/128x128/sublime_text.png\nTerminal=false\nCategories=TextEditor;IDE;Development" &&
echo -e $launcher >> /usr/share/applications/sublime.desktop &&
echo "Gnome3 Launcher created." &&
rm "$sublime" && echo "Removed Sublime Text 2.0.2 x64.tar.bz2."
rm -rf "Sublime Text 2/" && echo "Removed temp Sublime Text 2 directory." &&
echo "Sublime Text 2 installed successfully."
