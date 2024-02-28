# frozen_string_literal: true

source 'http://rubygems.org'

gem 'sinatra'
gem 'json'
gem 'racker'
gem 'aws-record'
gem 'rake'
gem 'rubysl-base64'
# Use Slim
gem 'html2slim'
gem 'slim-rails'

group :development do
  # Use Rubocop
  gem 'rubocop'
end

# These are the dependencies that are used only for unit tests.
group :test do
  gem 'rspec'
  gem 'rack-test'
  # Test coverage
  gem 'simplecov', require: false
  gem 'rubocop-rspec', require: false
end
