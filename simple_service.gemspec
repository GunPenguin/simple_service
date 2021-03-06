# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_service/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_service'
  spec.version       = SimpleService::VERSION
  spec.authors       = ['Jarrod Spillers']
  spec.email         = ['jarrod@stacktact.com']
  spec.description   = %q{A minimal service object composer with support for individual commands and top level organizer objects}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/jspillers/simple_service'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 12.0.0'
  spec.add_development_dependency 'rspec', '~> 3.6.0'
  spec.add_development_dependency 'pry', '~> 0.10.4'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'codeclimate-test-reporter'
end
