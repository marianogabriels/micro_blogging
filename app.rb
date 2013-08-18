require 'sinatra'
require 'sequel'
require 'bcrypt'
require 'shotgun'


require_relative 'config/config'
require_relative 'helpers/init'

class MicroBlogging < Sinatra::Base
  set :root, File.dirname(__FILE__)
end

Dir.glob('*/*init*').each do |i|
  require_relative i
end
