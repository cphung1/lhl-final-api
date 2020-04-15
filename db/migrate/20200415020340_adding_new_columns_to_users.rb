class AddingNewColumnsToUsers < ActiveRecord::Migration
  def change
    create_table :user_likes do |t|
      t.timestamps null: false
    end
    create_table :user_dislikes do |t|
      t.timestamps null: false
    end
    create_table :user_likedby do |t|
      t.timestamps null: false
    end
  end
end
