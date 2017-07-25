class CreateProductCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :product_categories do |tt|
      tt.references :product
      tt.references :category

      tt.timestamps
    end
  end
end
