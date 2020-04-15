class DropUsersLikedby < ActiveRecord::Migration
  def change
    drop_table :user_likedby
  end
end
