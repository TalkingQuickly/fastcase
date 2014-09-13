# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastcase/version'

Gem::Specification.new do |spec|
  spec.name          = "fastcase"
  spec.version       = Fastcase::VERSION
  spec.authors       = ["Ben Dixon"]
  spec.email         = ["ben@talkingquickly.co.uk"]
  spec.summary       = %q{A simple Ruby wrapper around the Fastcase API public link API }
  spec.description   = %q{A simple Ruby wrapper around the Fastcase API public link API } 
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json"
  spec.add_dependency "curb"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
