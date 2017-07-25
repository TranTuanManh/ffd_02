class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |tt|
      tt.float :rating
      tt.references :user
      tt.references :product

      tt.timestamps
    end
  end
end
