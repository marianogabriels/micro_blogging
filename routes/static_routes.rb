class MicroBlogging < Sinatra::Base
  get '/' do
    session[:message] ||= "Hello world!"
    session[:message]
  end
end
