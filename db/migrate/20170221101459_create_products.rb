class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :format
      t.references :artist, foreign_key: true
      t.integer :product_price
      t.integer :delivery_price
      t.integer :stock_quantity
      t.integer :rating_avg
      t.text :description
      t.references :material, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
