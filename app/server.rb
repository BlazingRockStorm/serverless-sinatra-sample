# frozen_string_literal: true

require 'sinatra'
require 'slim'
require 'aws-record'

before do
  if !request.body.read.empty? && request.body.size.positive?
    request.body.rewind
    @params = Sinatra::IndifferentHash.new
    @params.merge!(JSON.parse(request.body.read))
  end
end

##################################
# For the index page
##################################
get '/' do
  slim :index
end
