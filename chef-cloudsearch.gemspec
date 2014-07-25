# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chef/cloudsearch/version'

Gem::Specification.new do |spec|
  spec.name          = "chef-cloudsearch"
  spec.version       = Chef::Cloudsearch::VERSION
  spec.authors       = ["Nolan Davidson"]
  spec.email         = ["nolan.davidson@gmail.com"]
  spec.description   = "Add cloud search capability to Chef"
  spec.summary       = "Add cloud search capability to Chef"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
