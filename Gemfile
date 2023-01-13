# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in microservice_template.gemspec
gemspec

ruby '3.1.0', engine: 'jruby', engine_version: '9.4.0.0'

group :development, optional: true do
  gem 'coderay'
  gem 'rake'
  gem 'rspec'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rake'
  gem 'rubocop-rspec'
  gem 'simplecov'
  gem 'warbler', '2.0.5', git: 'https://github.com/jruby/warbler', branch: 'master', platforms: :jruby
  gem 'yard'
end
