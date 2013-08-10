require 'haml'
require "sinatra"
require "sequel"



class MicroBloggin < Sinatra::Application
  enable :sessions
end



require_relative 'models/init'
require_relative 'routes/init'
