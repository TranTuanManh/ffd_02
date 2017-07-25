class CreateProductOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :product_orders do |tt|
      tt.integer :quantity
      tt.float :unitprice
      tt.integer :discount
      tt.references :product
      tt.references :order

      tt.timestamps
    end
  end
end
