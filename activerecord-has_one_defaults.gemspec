# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "activerecord/has_one_defaults/version"

Gem::Specification.new do |spec|
  spec.name          = "activerecord-has_one_defaults"
  spec.version       = Activerecord::HasOneDefaults::VERSION
  spec.authors       = ["John Naegle"]
  spec.email         = ["john.naegle@goodmeasures.com"]

  spec.summary       = %q{Allows has_one associations to have a default.}
  spec.description   = %q{Adds a :default => true, or :default => {attributes} options to has_one associations that auto-build the association when accessed.}
  spec.homepage      = "https://github.com/GoodMeasuresLLC/activerecord-has_one_default"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", [">= 5.1", "< 6.1"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "sqlite3"
end
