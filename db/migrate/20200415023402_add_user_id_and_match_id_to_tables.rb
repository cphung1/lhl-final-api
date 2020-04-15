class AddUserIdAndMatchIdToTables < ActiveRecord::Migration
  def change
    add_column :user_likes, :user_id, :integer
    add_column :user_likes, :match_user_id, :integer
    add_column :user_dislikes, :user_id, :integer
    add_column :user_dislikes, :match_user_id, :integer
    add_column :user_likedby, :user_id, :integer
    add_column :user_likedby, :match_user_id, :integer
  end
end
