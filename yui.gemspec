# -*- encoding: utf-8 -*-
if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

Gem::Specification.new do |s|
  s.name        = "yui"
  s.version     = "1.1.3"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Klaus Kämpf", "Amon Sha"]
  s.email       = ["kkaempf@suse.de", "amon.sha@gmail.com"]
  s.homepage    = "http://www.github.com/libyui/libyui-bindings"
  s.summary     = "Ruby client bindings for libyui"
  s.description = "The yui gem provides a Ruby API to drive graphical
(Qt, Gtk) or text-mode (ncurses) UIs with libyui"

  s.files       = Dir.glob("lib/**/*.rb") + Dir.glob("ext/**/*.cxx")

  s.required_rubygems_version = ">= 1.3.6"
  s.extensions	<< "ext/yui/extconf.rb"
end

