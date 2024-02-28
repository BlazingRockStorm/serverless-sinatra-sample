require_relative '../app/server.rb'
require 'rack/test'

set :environment, :test

RSpec.configure do |config|
end

def app
  Sinatra::Application
end

def stub_client
end

def json_result
  JSON.parse(last_response.body)
end
