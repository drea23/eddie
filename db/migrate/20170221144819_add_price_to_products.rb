class AddPriceToProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :product_price
    add_monetize :products, :product_price, currency: { present: false }
  end
end
