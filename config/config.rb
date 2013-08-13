require 'sinatra'
require 'sequel'

class MicroBlogging < Sinatra::Base
  configure :development do
    set :db, File.join("sqlite3://development.db")
  end

  configure :test do
    set :db, File.join("sqlite3://test.db")
  end

  enable :sessions

  Sequel::Model.db = db
end
