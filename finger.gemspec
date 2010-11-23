# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "finger/version"

Gem::Specification.new do |s|
  s.name        = "finger"
  s.version     = Finger::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Hakan Ensari"]
  s.email       = ["hakan.ensari@papercavalier.com"]
  s.homepage    = "http://github.com/papercavalier/finger"
  s.summary     = %q{User information lookup program}
  s.description = %q{Finger is a user information lookup program.}

  s.rubyforge_project = "finger"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "octopi", "~> 0.3.0"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "aruba"
  s.add_development_dependency "rspec"
  if RUBY_VERSION.include?("1.8")
    s.add_development_dependency "ruby-debug"
  end
end
