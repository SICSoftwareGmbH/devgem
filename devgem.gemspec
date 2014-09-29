# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devgem/version'

Gem::Specification.new do |spec|
  spec.name          = "devgem"
  spec.version       = Devgem::VERSION
  spec.authors       = ["Mahmoud Sakr"]
  spec.email         = ["ms@sic-software.com"]
  spec.summary       = %q{Devgem - symlinks your current dir as a bundled gem}
  spec.description   = %q{Devgem - symlinks your current dir as a bundled gem}
  spec.homepage      = "https://github.com/SICSoftwareGmbH/devgem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = "devgem"
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
