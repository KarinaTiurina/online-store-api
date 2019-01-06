class CreateOrderProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :order_products do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :count
      t.float :price_per_product

      t.timestamps
    end
  end
end