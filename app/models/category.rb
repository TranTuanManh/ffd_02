class Category < ApplicationRecord
  has_many :productcategories, class_name: ProductCategory.name
  has_many :products, through: :productcategories
  belongs_to :type
end
