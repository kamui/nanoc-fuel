# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nanoc_fuel/version"

Gem::Specification.new do |s|
  s.name        = "nanoc_fuel"
  s.version     = NanocFuel::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jack Chu", "Bob Whitney"]
  s.email       = ["jack@jackchu.com", "robertj.whitney@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{nanoc 3.1 extension that useful helpers.}
  s.description = %q{}

  s.rubyforge_project = "nanoc_fuel"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency('nanoc', '>= 3.1.6')
  s.add_runtime_dependency('haml', '>= 3.1.1')
end
