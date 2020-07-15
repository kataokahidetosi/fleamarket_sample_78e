class CreateAdresses < ActiveRecord::Migration[6.0]
  def change
    create_table :adresses do |t|
      t.integer :post_code,       null: false
      t.integer :prefecture_code,    null: false
      t.string :city,                null: false
      t.string :house_number,        null: false
      t.string :building_name
      t.integer :phone_number,       unique: true
      t.timestamps
      t.references :user, null: false, foreign_key: true
    end
  end
end