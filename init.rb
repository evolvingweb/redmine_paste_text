require 'redmine'

# R7: no loader.ignore / manual require — the EditorPastePatch ViewListener
# (lib/editor_paste_patch.rb, render_on view_layouts_base_html_head) self-registers
# on Zeitwerk eager-load. refs #108530.
Redmine::Plugin.register :redmine_paste_text do
  name 'Redmine Paste Text'
  author 'Kevin Porras'
  url 'https://github.com/evolvingweb/redmine_paste_text'
  author_url 'http://evolvingweb.ca'
  description 'Contains paste extension inspired by https://puppypaste.com/'
  version '7.0.0'
  requires_redmine :version_or_higher => '7.0.0'
end
