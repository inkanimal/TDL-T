class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :name, null: false
      t.text :description
      t.decimal :price, precision: 8, scale: 2, default: "0.00"
      t.boolean :active
      t.string :image_file_name

      t.timestamps
    end
  end
end
