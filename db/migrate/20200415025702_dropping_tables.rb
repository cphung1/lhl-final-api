class DroppingTables < ActiveRecord::Migration
  def change
    drop_table :user_likes
    drop_table :user_dislikes
    drop_table :user_likedby
  end
end
