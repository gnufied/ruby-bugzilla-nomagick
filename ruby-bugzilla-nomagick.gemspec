# -*- encoding: utf-8 -*-
lib = File.expand_path('lib/', File.dirname(__FILE__))
$:.unshift lib unless $:.include?(lib)
require 'bugzilla/version'

Gem::Specification.new do |s|
  s.name        = "ruby-bugzilla-nomagick"
  s.version     = Bugzilla::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Csaba Henk"]
  s.email       = ["csaba.henk@lowlife.hu"]
  s.homepage    = "http://rubygems.org/gems/ruby-bugzilla-nomagick"
  s.summary = %Q{Ruby binding for Bugzilla WebService APIs}
  s.description = %Q{This aims to provide similar features to access to Bugzilla through WebService APIs in Ruby -- RMagcik stripped variant of ruby-bugzilla.}
  s.license     = 'LGPL-3.0+'
  s.required_rubygems_version = ">= 1.3.6"

  s.add_development_dependency "rspec", "~> 2.0"
  s.add_runtime_dependency "highline"

  s.add_development_dependency("bundler", ["~> 1.0"])

  bindir = 'bin'
  s.executables = Dir.glob('bin/*').reject {|x| x =~ /~\Z/}.map {|x| File.basename x}
  s.default_executable = 'bzconsole'

  s.files        = Dir.glob("lib/**/*[^~]") + %w(README.md COPYING)
  s.require_path = 'lib'
end
