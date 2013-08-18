require_relative 'auth'


class MicroBlogging < Sinatra::Base
  helpers do
    def login?
      if session[:username].nil?
        return false
      else
        return true
      end
    end

    def username
      return session[:username]
    end
  end
end
