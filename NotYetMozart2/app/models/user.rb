class User < ActiveRecord::Base
  attr_accessible :background_image, :created_at, :email, :name, :password_digest, :role, :user_image
  mount_uploader :user_image, UserImageUploader
  mount_uploader :background_image, BackgroundImageUploader

end
