$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blogine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blogine"
  s.version     = Blogine::VERSION
  s.authors     = ["Zernel"]
  s.email       = ["itzernel@gmail.com"]
  s.homepage    = "https://github.com/zernel/blogine"
  s.summary     = "A lightweight mountable blog engine for Rails."
  s.description = "A lightweight mountable blog engine for Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
  # s.add_dependency 'bootstrap-sass', '~> 3.3.7'
  s.add_dependency 'bootstrap', '~> 4.0.0.beta3'
  s.add_dependency 'jquery-rails'

  s.add_development_dependency "pry"
  s.add_development_dependency "sqlite3"
end
