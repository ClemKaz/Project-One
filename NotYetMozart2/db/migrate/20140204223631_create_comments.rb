class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :song_id
      t.integer :user_id
      t.datetime :created_at
      t.boolean :flag

      t.timestamps
    end
  end
end
