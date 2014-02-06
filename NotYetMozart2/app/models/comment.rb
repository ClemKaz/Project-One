class Comment < ActiveRecord::Base
  attr_accessible :comment, :created_at, :flag, :song_id, :user_id

  belongs_to :song
  belongs_to :user

  validates :comment, presence: true

end
