class RemoveTitleFromResponces < ActiveRecord::Migration
  def change
    remove_column :responses, :title, :string
  end
end
