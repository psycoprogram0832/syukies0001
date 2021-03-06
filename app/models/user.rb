class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

        validates :nickname, presence: true
        validates :syuki_name, presence: true
        validates :profile, presence: true
        validates :since, presence: true
        validates :avatar, presence: true
  
  has_many :syukies
  mount_uploader :avatar, AvatarUploader
end
