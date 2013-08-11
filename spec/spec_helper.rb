require 'rspec'
require 'rack/test'
require_relative '../app'

class MicroBloggin < Sinatra::Application
  set :environment, :test
  set :run, false
  set :raise_errors, true
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.around(:each) do |example|
    DB.transaction(:rollback=>:always){example.run}
  end
end

