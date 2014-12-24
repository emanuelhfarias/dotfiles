require 'FileUtils'

# ==== Sublime Text 2 (Preferences and Plugins) ====
sublime_pref_file = 'Preferences.sublime-settings'
sublime_plug_file = 'Package Control.sublime-settings'

sublime_orig = "sublime/"
sublime_dest = ENV['HOME'] + '/Library/Application Support/Sublime Text 2/Packages/User/'

# Copy sublime preferences
FileUtils.cp(sublime_orig + sublime_pref_file, sublime_dest + sublime_pref_file)

# Copy sublime plugins
FileUtils.cp(sublime_orig + sublime_plug_file, sublime_dest + sublime_plug_file)
