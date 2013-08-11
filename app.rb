require 'haml'
require 'sinatra'
require 'sequel'
require 'bcrypt'
require 'shotgun'

class MicroBloggin < Sinatra::Application ; end

require_relative 'config/appconf.rb'
require_relative 'models/init'      
require_relative 'routes/init'      
