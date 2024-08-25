require_relative '../app/server'
require 'rack/test'

set :environment, :test

RSpec.configure do |config|
  config.before do
    FeedbackServerlessSinatraTable.configure_client(client: stub_client)
  end
end

def app
  Sinatra::Application
end

def stub_client
  @stub_client ||= Aws::DynamoDB::Client.new(stub_responses: true) # don't send real calls to DynamoDB in test env
end

# We could use native RSpec `post '/endpoint', param1: 'foo', param2: 'bar'
# But this method better replicates how AWS API Gateway forwards the request
# to our AWS Lamda function: In './lambda.rb' needs to reset `rack.input` with
# JSON string Lambda event body.
def api_gateway_post(path, params)
  api_gateway_body_fwd = params.to_json
  rack_input = StringIO.new(api_gateway_body_fwd)

  post path, {}, { 'rack.input' => rack_input }
end

def json_result
  JSON.parse(last_response.body)
end
