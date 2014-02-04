class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :background_image, :created_at, :email, :name, :password, :password_confirmation, :role, :user_image

  mount_uploader :user_image, UserImageUploader
  mount_uploader :background_image, BackgroundImageUploader

  validates :password, presence: true, on: :created
  validates :email, presence: true
  validates :email, uniqueness: true

end
