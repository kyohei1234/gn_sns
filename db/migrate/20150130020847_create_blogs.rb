class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.integer :user_id
      t.text :image
      t.text :body

      t.timestamps
    end
  end
end
