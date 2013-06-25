class Audience < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]
         
  attr_accessible :email, :password, :password_confirmation
  attr_accessible :provider, :uid, :name
  
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    audience = Audience.where(:provider => auth.provider, :uid => auth.uid).first
    unless audience
      audience = Audience.create(name:auth.extra.raw_info.name,
                                 provider:auth.provider,
                                 uid:auth.uid,
                                 email:auth.info.email,
                                 password:Devise.friendly_token[0,20])
    end
    audience
  end
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        audience.email = data["email"] if audience.email.blank?
      end
    end
  end
end
