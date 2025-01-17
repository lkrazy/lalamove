# frozen_string_literal: true

lib = File.expand_path('../lib', __dir__)
lib1 = File.expand_path('./lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
$LOAD_PATH.unshift(lib1) unless $LOAD_PATH.include?(lib1)
require 'lalamove/version'

Gem::Specification.new do |spec|
  spec.name          = 'lalamove'
  spec.version       = Lalamove::VERSION
  spec.authors       = ['Jessie Arevalo']
  spec.email         = ['dt.jessie7@gmail.com']

  spec.summary       = %q{Lalamove Ruby Sdk}
  spec.description   = %q{Ruby SDK for easy integration with the lalamove API's}
  spec.homepage      = 'https://developers.lalamove.com/'
  spec.license       = 'MIT'

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/dyesiboy/lalamove'
  # spec.metadata["changelog_uri"] = 'TODO: Put your gem's CHANGELOG.md URL here.'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
