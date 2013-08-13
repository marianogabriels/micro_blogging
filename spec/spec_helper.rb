require 'rspec'
require 'rack/test'

Bundler.setup(:default, :test)
require_relative '../app'

ENV['RACK_ENV'] = 'test'
#DB = Sequel.sqlite

class MicroBlogging < Sinatra::Base
  #set :environment, :test
  Sequel.connect("sqlite://test.db")
  set :run, false
  set :raise_errors, true
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.around(:each) do |example|
    DB.transaction(:rollback=>:always){example.run}
  end
end

