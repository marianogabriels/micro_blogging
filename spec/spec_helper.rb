require 'rspec'
require 'rack/test'
ENV['RACK_ENV'] = 'test'

Bundler.setup(:default, :test)
require_relative '../app'

class MicroBlogging < Sinatra::Base
  #set :environment, :test
  set :run, false
  set :raise_errors, true
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  #config.around(:each) do |example|
  #  db.transaction(:rollback=>:always){example.run}
  #end
end

