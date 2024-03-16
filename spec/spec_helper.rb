# frozen_string_literal: true

require_relative '../app/server'
require 'rack/test'
require 'simplecov'
SimpleCov.start

set :environment, :test

RSpec.configure do |config|
end

if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
  SimpleCov.start 'rails'
  puts 'required simplecov'
end

def app
  Sinatra::Application
end

def stub_client; end

def json_result
  JSON.parse(last_response.body)
end
