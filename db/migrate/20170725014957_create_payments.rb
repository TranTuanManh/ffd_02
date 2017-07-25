class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |tt|
      tt.date :paymented_date
      tt.boolean :checked
      tt.references :order
      tt.references :user

      tt.timestamps
    end
  end
end
