class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    user = User.where(uid: auth.uid).first_or_create
    user.uid = auth.uid
    user.name = auth.info.name
    user.save
  end
end
