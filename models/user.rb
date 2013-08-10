class User < Sequel::Model
  include BCrypt
  def validate
    super
    validates_uniqueness_of(:username, :email)
  end
end
