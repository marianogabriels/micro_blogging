class User < Sequel::Model
  def validate
    super
    validates_uniqueness_of(:username, :email)
  end
end
