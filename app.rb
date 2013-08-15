require 'haml'
require 'sinatra'
require 'sequel'
require 'bcrypt'
require 'shotgun'

class MicroBlogging < Sinatra::Base; end


require_relative 'config/config'

Dir.glob('*/*init*').each do |i|
  require_relative i
end

#require_relative 'db/config'
