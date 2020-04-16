class AddColumnsToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :like_user, :integer
    add_column :matches, :match_user, :integer
  end
end
