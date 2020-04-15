class RemoveLikeeAndLikerFromDislikes < ActiveRecord::Migration
  def change
    remove_column :dislikes, :likee_id
    remove_column :dislikes, :liker_id
  end
end
