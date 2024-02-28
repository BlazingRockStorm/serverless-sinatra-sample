# frozen_string_literal: true

require_relative '../app/server'
require 'rack/test'

set :environment, :test

RSpec.configure do |config|
end

def app
  Sinatra::Application
end

def stub_client; end

def json_result
  JSON.parse(last_response.body)
end
