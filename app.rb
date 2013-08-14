require 'haml'
require 'sinatra'
require 'sequel'
require 'bcrypt'
require 'shotgun'

class MicroBlogging < Sinatra::Base; end


require_relative 'config/config'
require_relative 'helpers/init'
#require_relative 'db/config'
require_relative 'models/init'
require_relative 'routes/init'      
