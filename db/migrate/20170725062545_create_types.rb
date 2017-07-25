class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |tt|
      tt.string :name

      tt.timestamps
    end
  end
end
