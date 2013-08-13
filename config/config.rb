require 'sinatra'
require 'sequel'

class MicroBlogging < Sinatra::Base
  configure :development do
    set :db, Sequel.connect("sqlite://development.db")
  end

  configure :test do
    set :db, Sequel.connect("sqlite://test.db")
  end

  enable :sessions
  Sequel::Model.db = db
end
