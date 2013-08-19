class User < Sequel::Model
  attr_accessor :password_confirmation
  attr_reader :password
  include BCrypt
  plugin :validation_helpers

  def validate
    super
    validates_unique :username
    validates_unique :email
    validates_presence :username 
    validates_presence :email

    errors.add :password_digest, 'is not present' if blank? password_digest
    errors.add :password, 'has no confirmation' if password != password_confirmation
  end

  def password=(unencrypted)
    @password = unencrypted
    unless blank? unencrypted
      self.password_digest = BCrypt::Password.create(unencrypted)
    end
  end

  def authenticated?(unencrypted)
    if BCrypt::Password.new(password_digest) == unencrypted
      self
    end
  end

  private
  def blank?(string)
    string.nil? or string == /\A\s*\z/
  end
end
