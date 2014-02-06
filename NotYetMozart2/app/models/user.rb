class User < ActiveRecord::Base
  has_secure_password

  has_many :songs, dependent: :destroy
  has_many :comments, dependent: :destroy

  attr_accessible :background_image, :created_at, :email, :name, :password, :password_confirmation, :role, :user_image

  before_validation :set_default_role

  mount_uploader :user_image, UserImageUploader
  mount_uploader :background_image, BackgroundImageUploader

  validates :password, presence: true, on: :created
  validates :email, presence: true
  validates :email, uniqueness: true

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s #returns a boolean, whether a user has a certain rule. Is Nico an Admin? (True/False).
  end

  private
  def set_default_role
    self.role ||= :user
  end

end
