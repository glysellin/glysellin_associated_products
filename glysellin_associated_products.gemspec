$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "glysellin_associated_products/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "glysellin_associated_products"
  s.version     = GlysellinAssociatedProducts::VERSION
  s.authors     = ["Damien Corticchiato, Valentin Ballestrino"]
  s.email       = ["vala@glyph.fr"]
  s.homepage    = "http://www.glyph.fr"
  s.summary     = "Add associated products functionnality to Glysellin."
  s.description = "Add associated products functionnality to Glysellin."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "glysellin", "~> 0.4.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
