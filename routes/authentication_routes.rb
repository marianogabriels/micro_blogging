class MicroBloggin < Sinatra::Base
  get '/signin' do
    #
  end

  post '/sessions' do
  end

  delete '/signout' do
    session[:username] = nil
  end

end