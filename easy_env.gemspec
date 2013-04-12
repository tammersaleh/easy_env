# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_env/version'

Gem::Specification.new do |spec|
  spec.name          = "easy_env"
  spec.version       = EasyEnv::VERSION
  spec.authors       = ["Tammer Saleh"]
  spec.email         = ["me@tammersaleh.com"]
  spec.description   = %q{Even easier access to environment variables in Ruby}
  spec.summary       = %q{Basically, ENV.long_env_name instead of strings and hashes.}
  spec.homepage      = "http://tammersaleh.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency 'terminal-notifier-guard'
  spec.add_development_dependency 'rb-fsevent'
end
