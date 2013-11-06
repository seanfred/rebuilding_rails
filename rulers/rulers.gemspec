# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |s|
  s.name          = "rulers_seanfred"
  s.version       = Rulers::VERSION
  s.authors       = ["seanfred"]
  s.email         = ["sean.frederick.1@gmail.com"]
  s.description   = %q{description}
  s.summary       = %q{summary}
  s.homepage      = ""
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|s|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_runtime_dependency "rack"
  s.add_development_dependency "rack-test"
  s.add_runtime_dependency "erubis"
  s.add_runtime_dependency "multi_json"
  s.add_runtime_dependency "sqlite3"

end
