require 'haml'
require "sinatra"
require "sequel"


class SinatraApp
  enable :sessions

  configure :development do
  end
end
