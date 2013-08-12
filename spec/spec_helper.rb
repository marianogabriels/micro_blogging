require 'rspec'
require 'rack/test'

Bundler.setup(:default, :test)
require_relative '../app'
require_relative '../config/environments/test'

ENV['RACK_ENV'] = 'test'
#DB = Sequel.sqlite
DB = Sequel.connect("sqlite://test.db")


class MicroBloggin < Sinatra::Application
  #set :environment, :test
  set :run, false
  set :raise_errors, true
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  #DB.transaction(:rollback=>:always){example.run}
end

