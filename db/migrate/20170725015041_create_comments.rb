class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |tt|
      tt.string :content
      tt.references :user
      tt.references :product

      tt.timestamps
    end
  end
end
