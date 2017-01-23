Gem::Specification.new do |gem|
  gem.name          = "starbutterfly"
  gem.version       = '0.1.0'
  gem.author        = "Effy Elden"
  gem.email         = "dev@effy.is"

  gem.summary       = "Add a little Mewnian magic to your terminal"
  gem.description   = "Generate spells straight from Star Butterfly's wand"
  gem.homepage      = "https://github.com/ineffyble/starbutterfly"
  gem.license       = "MIT"

  gem.files         = `git ls-files -z`.split("\x0")
  gem.executables  << 'starbutterfly'
end
