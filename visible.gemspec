
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "visible/version"

Gem::Specification.new do |spec|
  spec.name          = "visible"
  spec.version       = Visible::VERSION
  spec.authors       = ["Yuri Costa"]
  spec.email         = ["yuri@sparkroad.com"]

  spec.summary       = %q{Provider agnostic communication channels.}
  spec.description   = %q{Visible enables provider agnostic communication for SMS, Email and Voice calls. Social Network communication channels coming soon. Feedback and contributions will determine priority.}
  spec.homepage      = "https://github.com/yuric/visible"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
