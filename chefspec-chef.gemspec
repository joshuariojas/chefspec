lib = File.expand_path("lib", __dir__)
$:.unshift lib unless $:.include?(lib)
require "chefspec/version"

Gem::Specification.new do |s|
  s.name          = "chefspec-chef"
  s.version       = ChefSpec::VERSION
  s.authors       = ["Andrew Crump", "Seth Vargo"]
  s.email         = ["andrew.crump@ieee.org", "sethvargo@gmail.com"]
  s.summary       = "Write RSpec examples and generate coverage reports for " \
                    "Chef recipes!"
  s.description   = "ChefSpec is a unit testing and resource coverage " \
                    "(code coverage) framework for testing Chef cookbooks " \
                    "ChefSpec makes it easy to write examples and get fast " \
                    "feedback on cookbook changes without the need for " \
                    "virtual machines or cloud servers."
  s.homepage      = "https://github.com/chef/chefspec"
  s.license       = "MIT"

  # Packaging
  s.files         = %w{LICENSE Rakefile Gemfile chefspec-chef.gemspec} + Dir.glob("{lib,templates,spec}/**/*", File::FNM_DOTMATCH).reject { |f| File.directory?(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 2.5"

  s.add_dependency "chef", ">= 15"
  s.add_dependency "chef-cli"
  s.add_dependency "fauxhai-chef", ">= 9.3"
  s.add_dependency "rspec",   "~> 3.0"
end