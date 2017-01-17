$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kitchen_sink/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kitchen_sink"
  s.version     = KitchenSink::VERSION
  s.authors     = ["deejayres"]
  s.email       = ["erinresso@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of KitchenSink."
  s.description = "TODO: Description of KitchenSink."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "sqlite3"
end
