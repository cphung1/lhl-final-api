class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :location
      t.string :email
      t.string :password
      t.date :birthdate

      t.timestamps null: false
    end
  end
end
