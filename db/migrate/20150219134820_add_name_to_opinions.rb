class AddNameToOpinions < ActiveRecord::Migration
  def change
    add_column :opinions, :name, :string
  end
end
