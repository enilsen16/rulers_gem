# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "erik_rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["Erik Nilsen"]
  spec.email         = ["enilsen16@live.com"]
  spec.summary       = %q{A Rack-based Web Framework.}
  spec.description   = %q{A Rack-based Web Framework, similar to rails.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rack"
  spec.add_runtime_dependency "erubis"
  spec.add_runtime_dependency "multi_json"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "test-unit"
end
