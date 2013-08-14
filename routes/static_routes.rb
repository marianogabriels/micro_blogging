class MicroBlogging < Sinatra::Base
  get '/' do
    haml :login
  end
end
