# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'postmon_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "postmon_cli"
  spec.version       = PostmonCli::VERSION
  spec.authors       = ["Breno Moura"]
  spec.email         = ["basmoura@gmail.com"]
  spec.summary       = %q{CLI for Postmon API}
  spec.description   = %q{Postmon API in your bash}
  spec.homepage      = "https://github.com/PostmonAPI/postmon-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "postmon_ruby", "~> 2.1.3"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
