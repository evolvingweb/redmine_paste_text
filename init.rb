require 'redmine'

# Tell Zeitwerk to ignore this plugin's lib directory
plugin_lib = File.join(File.dirname(__FILE__), 'lib')
Rails.autoloaders.each { |loader| loader.ignore(plugin_lib) }

# Require plugin files
require File.join(plugin_lib, 'editor_paste_patch')

Redmine::Plugin.register :redmine_paste_text do
  name 'Redmine Paste Text'
  author 'Kevin Porras'
  url 'https://github.com/evolvingweb/redmine_paste_text'
  author_url 'http://evolvingweb.ca'
  description 'Contains paste extension inspired by https://puppypaste.com/'
  version '6.0.0'
  requires_redmine :version_or_higher => '3.4'
end
