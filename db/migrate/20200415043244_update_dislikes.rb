class UpdateDislikes < ActiveRecord::Migration
  def change
    add_column :dislikes, :disliker_id, :integer
    add_column :dislikes, :dislikee_id, :integer
  end
end
