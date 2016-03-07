class User

  attr_accessor :uid
  attr_accessor :name
  attr_accessor :image

  def self.from_omniauth(auth)
      new_user = User.new
      new_user.uid = auth.uid
      new_user.image  = auth.info.image
      new_user
  end


  def is_valid?(session)
    !session["current_user"].nil?
  end

end
