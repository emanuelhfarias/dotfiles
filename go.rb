require 'fileutils'
require 'rbconfig'

def os
    @os ||= (
      host_os = RbConfig::CONFIG['host_os']
      case host_os
      when /darwin|mac os/
        :macosx
      when /linux/
        :linux
      end
    )
end

sublime_pref_file = 'Preferences.sublime-settings'
sublime_plug_file = 'Package Control.sublime-settings'

sublime_orig = "sublime/"
sublime_mac = '/Library/Application Support/Sublime Text 2/Packages/User/'
sublime_linux = '/.config/sublime-text-2/Packages/User/'
sublime_dest = ENV['HOME'] + (os == :macosx ? sublime_mac : sublime_linux)

# Copy sublime preferences
FileUtils.cp(sublime_orig + sublime_pref_file, sublime_dest + sublime_pref_file)

# Copy sublime plugins
FileUtils.cp(sublime_orig + sublime_plug_file, sublime_dest + sublime_plug_file)
