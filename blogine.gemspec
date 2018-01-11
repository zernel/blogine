$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blogine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blogine"
  s.version     = Blogine::VERSION
  s.authors     = ["Zernel"]
  s.email       = ["itzernel@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Blogine."
  s.description = "TODO: Description of Blogine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
