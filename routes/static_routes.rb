class MicroBlogging < Sinatra::Base
  get '/' do
    session[:message] ||= "Hello world!"
    session[:message]
    haml :'index', layout: :'layout/application'
  end


end
