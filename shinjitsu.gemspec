# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shinjitsu/version'

Gem::Specification.new do |spec|
  spec.name          = "shinjitsu"
  spec.version       = Shinjitsu::VERSION
  spec.authors       = ["Tony Arcieri"]
  spec.email         = ["bascule@gmail.com"]

  spec.summary       = "Verifiable authenticity for Ruby object attributes."
  spec.description   = <<-DESCRIPTION.strip.gsub(/\s+/, " ")
    Shinjitsu uses cryptography (specificaly Merkle trees, MACs, and digital
    signatures) to ensure attributes of objects are authentic.
  DESCRIPTION

  spec.homepage      = "https://github.com/cryptosphere/shinjitsu"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
