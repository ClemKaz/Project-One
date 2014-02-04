class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :role
      t.string :password_digest
      t.string :email
      t.datetime :created_at
      t.string :user_image
      t.string :background_image

      t.timestamps
    end
  end
end
