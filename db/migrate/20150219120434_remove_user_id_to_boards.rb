class RemoveUserIdToBoards < ActiveRecord::Migration
  def change
    remove_column :boards, :board_id, :integer
  end
end
