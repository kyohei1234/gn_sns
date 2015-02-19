class RenameBoardsColumnToOpinions < ActiveRecord::Migration
  def change
  	rename_column :opinions, :boards_id, :board_id
  end
end
