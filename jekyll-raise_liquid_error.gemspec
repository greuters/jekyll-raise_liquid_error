# frozen_string_literal: true

require_relative "lib/jekyll/raise_liquid_error/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-raise_liquid_error"
  spec.version = Jekyll::RaiseLiquidError::VERSION
  spec.authors = ["Simon Greuter"]
  spec.email = ["6537188+greuters@users.noreply.github.com"]

  spec.summary       = %q{This plugin provides a simple liquid filter which raises an error at build time.}
  spec.description   = %q{Liquid filter to raise an error during Jekyll build}
  spec.homepage      = "https://github.com/greuters/jekyll-raise_liquid_error"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/greuters/jekyll-raise_liquid_error"

  spec.files         = [*Dir["lib/**/*.rb"], "README.md", "LICENSE.md"]
  spec.test_files    = [*Dir["spec/**/*.rb"]]
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'liquid'
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler"
end
