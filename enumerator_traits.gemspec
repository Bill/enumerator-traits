# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'enumerator_traits/version'

Gem::Specification.new do |gem|
  gem.name          = "enumerator_traits"
  gem.version       = EnumeratorTraits::VERSION
  gem.authors       = ["Bill"]
  gem.email         = ["bill.burcham@gmail.com"]
  gem.description   = %q{Traits are types for Ruby sequences (Enumerators)}
  gem.summary       = %q{By declaring a trait, the caller promises that the sequence will conform. No conformance checking will be done at runtime in that case. Each kind of (declarable) trait is ensurable by a module returned from the trait's #ensure_with class method.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
