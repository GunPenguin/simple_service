# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_service_objects/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_service_objects'
  spec.version       = SimpleServiceObjects::VERSION
  spec.authors       = ['Jarrod Spillers']
  spec.email         = ['jarrod@stacktact.com']
  spec.description   = %q{}
  spec.summary       = %q{}
  spec.homepage      = 'https://github.com/jspillers/simple_service_objects'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '3.2.0'
end