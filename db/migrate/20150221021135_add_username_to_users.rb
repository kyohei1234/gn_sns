class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :middlename, :string
    add_column :users, :lastname, :string
    add_column :users, :image, :string
    add_column :users, :nationality, :string
    add_column :users, :participation_year, :date
    add_column :users, :occupation, :text
    add_column :users, :facebook, :text
    add_column :users, :twitter, :text
    add_column :users, :linkedin, :text
    add_column :users, :permission, :integer
  end
end
