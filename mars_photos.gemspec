# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mars_photos/version'

Gem::Specification.new do |spec|
  spec.name          = "mars_photos"
  spec.version       = MarsPhotos::VERSION
  spec.authors       = ["Chris Tweedie", "Patty Cupueran"]
  spec.email         = ["cltweedie@gmail.com", "pa1809ty@gmail.com"]

  spec.summary       = %q{A Ruby wrapper for the NASA Mars Rover Photos API.}
  spec.description   = %q{A Ruby wrapper for the NASA Mars Rover Photos API.}
  spec.homepage      = "https://github.com/cltweedie/mars_photos"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "codeclimate-test-reporter"

  spec.add_dependency "httparty"
end
