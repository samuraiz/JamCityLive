class User < ActiveRecord::Base
  has_many :votes
  has_many :contestants, through: :votes, class_name: 'Contestant'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:facebook]


  def self.find_for_facebook(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(provider: access_token.provider, uid: access_token.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(
            name: data["name"],
            provider: access_token.provider,
            email: data["email"],
            image: data["image"],
            uid: access_token.uid,
            password: Devise.friendly_token[0, 20],
        )
      end
    end
  end

  def to_s
    name
  end

end
