# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "typekit/version"

Gem::Specification.new do |s|
  s.name        = 'typekit-rails'
  s.version     = Typekit::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = [ 'Chris Bielinski' ]
  s.email       = [ 'chris@shadowreactor.com' ]
  s.homepage    = 'https://github.com/chrisb/typekit-rails'
  s.summary     = %q{Adobe Typekit helper for Rails.}
  s.description = %q{Adobe Typekit helper for Rails.}

  s.license = 'MIT'

  # s.add_development_dependency "rspec"
  # s.rubyforge_project = "lorem"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = [ 'lib' ]
end
