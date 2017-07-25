class AddIndexTypeToCategories < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :type, foreign_key: true
  end
end
