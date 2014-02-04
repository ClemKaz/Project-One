class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :song_file
      t.datetime :created_at
      t.integer :user_id
      t.string :song_image

      t.timestamps
    end
  end
end
