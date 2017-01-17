$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'kitchen_sink/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'kitchen_sink'
  s.version     = KitchenSink::VERSION
  s.authors     = ['deejayres']
  s.email       = ['erinresso@gmail.com']
  s.homepage    = 'https://github.com/deejayres/kitchen_sink'
  s.summary     = 'Generates Kitchen Sink type pages to show various UI components'
  s.description = 'Generates Kitchen Sink type pages to show various UI components'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile',
                'README.md']

  s.add_dependency 'rails', '~> 4.2.4'
end
