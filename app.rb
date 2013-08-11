require 'haml'
require 'sinatra'
require 'sequel'
require 'bcrypt'



class MicroBloggin < Sinatra::Application
  enable :sessions
  set :root, File.dirname(__FILE__)
end



require_relative 'models/init'
require_relative 'routes/init'
