# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bradley_fizzbuzz/version'

Gem::Specification.new do |gem|
  gem.name          = "bradley_fizzbuzz"
  gem.version       = BradleyFizzbuzz::VERSION
  gem.authors       = ["DVG"]
  gem.email         = ["devryguy@gmail.com"]
  gem.description   = %q{To fizzbuzz arrays and ranges}
  gem.summary       = %q{Replace and array or range of numbers with a fizzbuzzed array, or print it out}
  gem.homepage      = "http://www.github.com/DVG/bradley_fizzbuzz"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end
