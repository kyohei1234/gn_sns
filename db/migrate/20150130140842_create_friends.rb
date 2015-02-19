class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.text :image

      t.timestamps
    end
  end
end
