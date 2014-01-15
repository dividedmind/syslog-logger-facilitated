# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'syslog/logger/facilitated/version'

Gem::Specification.new do |spec|
  spec.name          = "syslog-logger-facilitated"
  spec.version       = Syslog::Logger::Facilitated::VERSION
  spec.authors       = ["Conjur Inc."]
  spec.email         = ["rafal@conjur.net"]
  spec.summary       = %q{Syslog::Logger patched to support #<< and setting facility}
  spec.homepage      = "https://github.com/dividedmind/syslog-logger-facilitated"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '~> 2.0'
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
