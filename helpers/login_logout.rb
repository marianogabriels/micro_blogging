class MicroBlogging < Sinatra::Base
  helpers do

    def require_logged_in
      redirect('/sessions/new') unles is_authenticated?
    end

    def login
      session[:username].nil? ? false : true
    end

    def username
      session[:username]
    end
  end
end
