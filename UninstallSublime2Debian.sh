#!/bin/bash

# Make sure only root can run this script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

rm -rf /opt/sublime-text-2 &&
echo "Removed /opt/sublime-text-2 directory."

rm /usr/local/sublime-text-2 &&
echo "Removed /usr/local/sublime-text-2 directory."

rm /usr/local/bin/sublime_text &&
echo "Removed /usr/local/bin/sublime_text executable."

rm /usr/share/applications/sublime.desktop &&
echo "Removed /usr/share/applications/sublime.desktop Gnome3 launcher."
