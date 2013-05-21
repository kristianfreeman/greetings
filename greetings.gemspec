# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'greetings/version'

Gem::Specification.new do |gem|
  gem.name          = "greetings"
  gem.version       = Greetings::VERSION
  gem.authors       = ["Kristian Freeman"]
  gem.email         = ["kristian@kristianfreeman.com"]
  gem.description   = %q{A Rails helper for greeting users in many different languages, similar to Flickr and Gravatar}
  gem.summary       = %q{A Rails helper for saying hello to many people}
  gem.homepage      = "http://github.com/imkmf/greetings"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
end
