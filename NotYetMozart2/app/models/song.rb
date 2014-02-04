class Song < ActiveRecord::Base
  attr_accessible :created_at, :name, :song_file, :song_image, :user_id
  mount_uploader :song_image, SongImageUploader
  mount_uploader :song_file, SongFileUploader
end
