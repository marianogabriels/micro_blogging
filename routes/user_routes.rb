class MicroBlogging < Sinatra::Base
  get '/users' do
    #users.all
  end

  get '/users/:id' do |id|
    #find
  end

  get '/users/new' do
    #signup form
  end

  post '/users' do
    #create user
  end

  get 'users/1/edit' do
    #edit user forms
  end

  path 'users/1' do
    #update user
  end

  delete 'users/:id' do |id|
  end
end
