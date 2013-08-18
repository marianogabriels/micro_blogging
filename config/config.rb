require 'sinatra'
require 'sequel'

class MicroBlogging < Sinatra::Base
  set :views, 'views'
  set :root, File.dirname(__FILE__)
  enable :sessions

  configure :development do
    set :db, Sequel.connect("sqlite://development.db")
  end

  configure :test do
    set :db, Sequel.connect("sqlite://test.db")
  end

  Sequel::Model.db = db
end
