class User < Sequel::Model
  include BCrypt
  plugin :validation_helpers
  plugin :schema
  def validate
    super
    #validates_unique :username
    #validates_unique :email
    validates_presence [:username, :email]
  end
end
