class AddFriendIdToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :friend_id, :integer
  end
end
