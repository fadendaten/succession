$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "succession/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "succession"
  s.version     = Succession::VERSION
  s.authors     = ["Felix Langenegger"]
  s.email       = ["felix.langenegger@gmail.com"]
  s.homepage    = "http://fadendaten.ch"
  s.summary     = "Rails Plugin to provide a user managed succession."
  s.description = "TODO: Description of Succession."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.14"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
