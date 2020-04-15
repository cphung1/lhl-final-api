class DropUsersDislikes < ActiveRecord::Migration
  def change
    drop_table :user_dislikes
  end
end
