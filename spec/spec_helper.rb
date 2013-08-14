require 'rspec'
require 'rack/test'
require 'sinatra'
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


def create_user
  user = User.new


end
