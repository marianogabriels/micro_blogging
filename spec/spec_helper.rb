require 'rspec'
require 'rack/test'
require 'sinatra'
require 'pry'
require 'factory_girl'

Bundler.setup(:default, :test)

class MicroBlogging < Sinatra::Base
  set :environment, :test
  set :run, false
  set :raise_errors, true
end

RSpec.configure do |config|
  config.color_enabled = true
  config.include Rack::Test::Methods
  config.around(:each) do |example|
    MicroBlogging.db.transaction(:rollback=>:always){example.run}
  end
end

require_relative '../app'
require_relative '../config/config'
Sequel::Model.db = MicroBlogging.db

#monkey path!!
class Sequel::Model
  alias_method :save!, :save
end

FactoryGirl.find_definitions

binding.pry
