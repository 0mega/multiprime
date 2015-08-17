# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multiprime/version'

Gem::Specification.new do |spec|
  spec.name          = "multiprime"
  spec.version       = Multiprime::VERSION
  spec.authors       = ["Oleksandr Kruk"]
  spec.email         = ["kruk.oleksandr@gmail.com"]
  spec.summary       = %q{N Prime multiplication table}
  spec.description   = %q{Generates the first N prime numbers and prints the multiplication number for them.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir["Gemfile",
                          "LICENSE.txt",
                          "README.md",
                          "Rakefile",
                          "bin/multiprime",
                          "lib/multiprime.rb",
                          "lib/multiprime/prime_gen.rb",
                          "lib/multiprime/table_generator.rb",
                          "lib/multiprime/version.rb",
                          "multiprime.gemspec",
                          "spec/multiprime_spec.rb",
                          "spec/primegen_spec.rb",
                          "spec/spec_helper.rb"]
  # `git ls-files -z`.split("\x0")
  spec.executables   = ["multiprime"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
