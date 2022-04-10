# frozen_string_literal: true

require_relative "lib/getcanvasuser/version"

Gem::Specification.new do |spec|
  spec.name          = "getcanvasuser"
  spec.version       = Getcanvasuser::VERSION
  spec.authors       = ["lflores1961"]
  spec.email         = ["fernando.flores1961@gmail.com"]

  spec.summary       = "This is my first attemp of writing a gem"
  spec.description   = "This will go to get my canvas user information"
  spec.homepage      = "https://github.com/lflores1961/getcanvasuser"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "I don't have any"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lflores1961/getcanvasuser"
  spec.metadata["changelog_uri"] = "https://github.com/lflores1961/getcanvasuser"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency 'httparty', '~> 0.20.0'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
