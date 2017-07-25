class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |tt|
      tt.string :category

      tt.timestamps
    end
  end
end
