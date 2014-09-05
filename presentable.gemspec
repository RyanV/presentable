# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'presentable/version'

Gem::Specification.new do |spec|
  spec.name          = "presentable"
  spec.version       = Presentable::VERSION
  spec.authors       = ["Ryan Venegas"]
  spec.email         = ["rvenegas@sheetmusicplus.com"]
  spec.summary       = %q{simple presenter pattern}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
