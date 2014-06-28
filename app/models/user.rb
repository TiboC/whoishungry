class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]

  belongs_to :promo
  has_many :meals_cooked, class_name: "Meal", foreign_key: :cooker_id

  has_attached_file :avatar, :styles => { :normal => "300x300>", thumb: "20x20>"}, :default_url => "missing-:style.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

def self.from_omniauth(auth)
  where(auth.slice(:provider, :uid)).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.name = auth.info.name   # assuming the user model has a name
  end
end

end
