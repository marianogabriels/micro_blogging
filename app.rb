require 'haml'
require 'sinatra'
require 'sequel'
require 'bcrypt'
require 'shotgun'
require_relative 'config/config'
#require_relative 'db/config'
require_relative 'models/init'
require_relative 'routes/init'      

class MicroBlogging < Sinatra::Base; end
