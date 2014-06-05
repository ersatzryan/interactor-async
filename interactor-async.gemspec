# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "interactor-async"
  spec.version       = "0.0.1"
  spec.authors       = ["Ryan Glover"]
  spec.email         = ["ersatzryan@gmail.com"]
  spec.summary       = %q{Simple Asynchronous Interactors}
  spec.description   = %q{Simple asynchronous interactors using Sucker Punch}
  spec.homepage      = "http://github.com/ersatzryan/interactor-async"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency "interactor", "~> 2.0"
  spec.add_dependency "sucker_punch", "~> 1.0.5"
end
