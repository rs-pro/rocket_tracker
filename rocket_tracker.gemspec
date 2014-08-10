# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rocket_tracker/version'

Gem::Specification.new do |spec|
  spec.name          = "rocket_tracker"
  spec.version       = RocketTracker::VERSION
  spec.authors       = ["glebtv"]
  spec.email         = ["glebtv@gmail.com"]
  spec.summary       = %q{Support gem for RocketTracker}
  spec.description   = %q{http://rtrack.ru}
  spec.homepage      = "https://github.com/rs-pro/rocket_tracker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bindata", '~> 2.1.0'
  spec.add_dependency "yajl-ruby"
  spec.add_dependency "rails"
  spec.add_dependency "jquery-rails"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

