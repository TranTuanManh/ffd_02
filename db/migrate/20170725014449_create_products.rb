class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |tt|
      tt.string :name
      tt.string :description
      tt.float :price
      tt.string :image
      tt.references :user

      tt.timestamps
    end
  end
end
