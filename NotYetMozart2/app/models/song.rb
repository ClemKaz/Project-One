class Song < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  attr_accessible :created_at, :name, :song_file, :song_image, :user_id
  mount_uploader :song_image, SongImageUploader
  mount_uploader :song_file, SongFileUploader

  validates :name, presence: true
  validates :song_file, presence: true
end
