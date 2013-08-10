class Post < Sequel::Model
  def validate
    super
    validates_length_range 4..170, :content
  end
end
