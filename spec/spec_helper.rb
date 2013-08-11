Sinatra::Base.set :environment, :test
require 'rspec'
require 'rack/test'


class MicroBloggin
  set :environment, :test
  set :run, false
  set :raise_errors, true
end
