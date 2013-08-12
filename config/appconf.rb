class MicroBloggin < Sinatra::Base
  configure :development do
    #set :database, 'sqlite://tmp/development.sqlite'
  end

  configure :test do
    #set :database, 'sqlite://tmp/test.sqlite' 
  end
  
  configure :production do
    #pg
  end

  enable :sessions
end
