class MicroBloggin < Sinatra::Application
  configure :development do
    set :database, 'sqlite://tmp/development.sqlite'
  end

  configure :test do
    set :database, 'sqlite3::memory:'
  end
  
  configure :production do
    #pg
  end

  enable :sessions
end
