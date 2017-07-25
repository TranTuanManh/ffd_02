class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |tt|
      tt.string :name
      tt.string :email
      tt.string :password_digest
      tt.string :remember_digest
      tt.boolean :admin
      tt.string :activation_digest
      tt.boolean :activated
      tt.date :activated_at
      tt.string :reset_digest
      tt.date :reset_send_at

      tt.timestamps
    end
  end
end
