# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dynamictostatic/version"

Gem::Specification.new do |spec|
  spec.name          = "dynamictostatic"
  spec.version       = Dynamictostatic::VERSION
  spec.authors       = ["Marc Terns"]
  spec.email         = ["tenxurz@gmail.com"]

  spec.summary       = "This ruby gem converts iOS Dynamic Frameworks to Static Frameworks."
  spec.description   = "This ruby gem converts iOS Dynamic Frameworks to Static Frameworks."
  spec.homepage      = "https://github.com/pkrmf/dynamic-to-static"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["dynamictostatic"]
  spec.require_paths = ["lib"]
  spec.post_install_message = "Thanks for installing dynamictostatic converter!"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "xcodeproj"
end
