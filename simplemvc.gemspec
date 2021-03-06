# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplemvc/version'

Gem::Specification.new do |spec|
  spec.name          = "simplemvc"
  spec.version       = Simplemvc::VERSION
  spec.authors       = ["jimbog"]
  spec.email         = ["jimmygarzon@gmail.com"]
  spec.summary       = %q{Simple MVC}
  spec.description   = %q{Simple MVC}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "rack"
  spec.add_runtime_dependency "erubis"
end
