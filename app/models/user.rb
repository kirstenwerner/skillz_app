class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  has_many :user_skills
  has_many :skills, through: :user_skills

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.first_name = auth.info.name.split(" ").first
      user.last_name = auth.info.name.split(" ").last
      user.password = Devise.friendly_token[0,20]
    end
  end
end
