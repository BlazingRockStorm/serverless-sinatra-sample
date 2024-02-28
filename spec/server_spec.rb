require 'spec_helper'

# Tests for server.rb
describe 'HelloWorld Service' do
  include Rack::Test::Methods

  # Test for HTTP GET for URL-matching pattern '/'
  it "should return successfully on GET" do
    get '/'
    expect(last_response).to be_ok
    # json_result = JSON.parse(last_response.body)
    # expect(json_result["Output"]).to eq("Hello World!")
  end
end
