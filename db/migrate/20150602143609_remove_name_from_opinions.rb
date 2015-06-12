class RemoveNameFromOpinions < ActiveRecord::Migration
  def change
    remove_column :opinions, :name, :string
  end
end
