class AddColumnUserIdToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :user_id, :integer
    add_column :boards, :image, :text
  end
end
