# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nanoc-fuel/version"

Gem::Specification.new do |s|
  s.name        = "nanoc-fuel"
  s.version     = NanocFuel::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jack Chu", "Bob Whitney", "Winter Lee"]
  s.email       = ["jack@jackchu.com", "robertj.whitney@gmail.com", "wintafay@gmail.com"]
  s.homepage    = "https://github.com/kamui/nanoc-fuel"
  s.summary     = %q{nanoc extension that adds useful helpers (facebook, google analytics, etc).}
  s.description = %q{}

  s.rubyforge_project = "nanoc-fuel"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency('nanoc', '~> 3.1')
  s.add_runtime_dependency('haml', '~> 3.1')
end
