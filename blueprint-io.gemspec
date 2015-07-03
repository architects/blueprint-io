# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blueprint/io/version'

Gem::Specification.new do |spec|
  spec.name          = "blueprint-io"
  spec.version       = Blueprint::Io::VERSION
  spec.authors       = ["Jonathan Soeder"]
  spec.email         = ["jonathan.soeder@gmail.com"]

  spec.summary       = %q{Blueprint lets you create product blueprints}
  spec.description   = %q{Blueprint lets you create product blueprints which make collaborations between designers, developers, and project stakeholders focused and efficient.}
  spec.homepage      = "https://blueprint.io"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'datapimp', '>= 1.2.1'
  spec.add_dependency 'brief', '>= 1.17.3'
  spec.add_dependency 'skypager', '>= 2.0.0'
  spec.add_dependency 'git-version-bump'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
