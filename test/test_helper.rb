require 'test/unit'
require 'rack/test'
require_relative '../app'


class Test::Unit::Testcase
  include Rack::Test::Methods
end

Sinatra::Base.set :environment, :test
Sinatra::Base.set :run, false
Sinatra::Base.set :raise_errors, true
Sinatra::Base.set :logging, false
puts Sinatra::Base.environment



class SequelTestCase < Test::Unit::Testcase
  def run(*args, &block)
    result = nil
    Sequel::Model.db.transaction(:rollback=>:always){ result = super }
    result
  end
end
