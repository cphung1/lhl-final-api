class DropUsersLikes < ActiveRecord::Migration
  def change
    drop_table :user_likes
  end
end
