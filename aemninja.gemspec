# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aemninja/version'

Gem::Specification.new do |spec|
  spec.name          = "aemninja"
  spec.version       = Aemninja::VERSION
  spec.authors       = ["AEMNinja"]
  spec.email         = ["info@aemninja.com"]

  spec.summary       = %q{AEM scripting Gem}
  spec.description   = %q{Reduces complexity of AEM deployments.}
  spec.homepage      = "https://gitlab.com/aemninja/aemninja"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["aemninja"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport", "~> 4.2"
  spec.add_runtime_dependency "rest-client", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 2.0.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.8"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 3.0"
end
