# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rack/staying_alive/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'staying-alive'
  gem.version       = Rack::StayingAlive::VERSION
  gem.licenses      = ['MIT']
  gem.summary       = %q{Rack Middleware Health Check}
  gem.authors       = ['Chad W Pry']
  gem.description   = %q{Rack Middleware Health Check}
  gem.email         = ['chad.pry@gmail.com']
  gem.homepage      = 'http://www.github.com/recruitifi/staying-alive'

  gem.files         = [
    'lib/rack/staying_alive/version.rb',
    'lib/rack/staying_alive.rb',
    'lib/staying-alive.rb'
  ]
  gem.require_paths = ['lib']

  gem.add_development_dependency('rake', '~> 0')
  gem.add_development_dependency('rspec', '~> 3.1', '>= 3.1.0')
end
