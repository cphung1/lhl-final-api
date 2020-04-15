class AddingNewColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :likedUsers, :string, array: true, default: []
    add_column :users, :dislikedUsers, :string, array: true, default: []
    add_column :users, :likedBy, :string, array: true, default: []
  end
end
