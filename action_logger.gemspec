# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'action_logger/version'

Gem::Specification.new do |gem|
  gem.name          = 'action_logger'
  gem.version       = ActionLogger::VERSION
  gem.author        = 'Jeroen Jacobs'
  gem.email         = 'gems@jeroenj.be'
  gem.description   = 'Log actions in your Rails app'
  gem.summary       = 'Log actions in your Rails app'
  gem.homepage      = ''

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'railties', '>= 3.0.0'
end
