require 'haml'
require 'sinatra'
require 'sequel'
require 'bcrypt'
require 'shotgun'

require_relative 'config/appconf.rb'
class MicroBloggin < Sinatra::Application ; end

require_relative 'models/init'      
require_relative 'routes/init'      
