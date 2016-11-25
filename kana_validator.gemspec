$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kana_validator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kana_validator"
  s.version     = KanaValidator::VERSION
  s.authors     = ["Toshihisa KATO"]
  s.email       = ["toshihk@gmail.com"]
  s.homepage    = "https://github.com/toshih-k/kana_validator"
  s.summary     = "Japanese Hiragana and Katakana Validator for Rails."
  s.description = "Validate Hiragana and Katakana."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency "activemodel"
  s.add_dependency "moji"

  # s.add_development_dependency "sqlite3"
end
