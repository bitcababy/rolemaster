$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rolemaster/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rolemaster"
  s.version     = Rolemaster::VERSION
  s.authors     = ["Meredith Lesly"]
  s.email       = ["meredith@xoala.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Rolemaster."
  s.description = "TODO: Description of Rolemaster."

#  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.files = `git ls-files`.split("\n")
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.3"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "database_cleaner"
end
