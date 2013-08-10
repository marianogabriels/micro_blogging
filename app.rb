require 'haml'
require "sinatra"
require "sequel"


class SinatraApp < Sinatra::Application
  enable :sessions
end



require_relative 'models/init'
