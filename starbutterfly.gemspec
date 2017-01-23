Gem::Specification.new do |gem|
  gem.name          = "starbutterfly"
  gem.version       = '0.1.1'
  gem.author        = "Effy Elden"
  gem.email         = "dev@effy.is"

  gem.summary       = "Add a little Mewnian magic to your terminal"
  gem.description   = "Generate spells straight from Star Butterfly's wand"
  gem.homepage      = "https://github.com/ineffyble/starbutterfly"
  gem.license       = "MIT"

  gem.files         = `git ls-files -z`.split("\x0")
  gem.executables  << 'starbutterfly'

  gem.add_runtime_dependency 'paint', '>= 2.0.0'
  gem.add_runtime_dependency 'launchy', '>= 2.4.3'
end
