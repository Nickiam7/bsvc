
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bsvc/version"

Gem::Specification.new do |spec|
  spec.name          = "bsvc"
  spec.version       = Bsvc::VERSION
  spec.authors       = ["Nick McNeany"]
  spec.email         = ["nmcneany@gmail.com"]

  spec.summary       = %q{A Bootstrap and ViewComponent library for Rails views.}
  spec.description   = %q{A Bootstrap and ViewComponent library for Rails views.}
  spec.homepage      = "https://github.com/Nickiam7/bsvc"
  spec.license       = "MIT"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "view_component", "~> 2.75"
end
