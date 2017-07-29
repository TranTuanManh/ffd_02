class Product < ApplicationRecord
  has_many :ratings, dependent: :destroy
  has_many :raters, through: :ratings, source: :user
  has_many :productorders, class_name: ProductOrder.name
  has_many :orders, through: :productorders
  has_many :productcategories, class_name: ProductCategory.name
  has_many :categories, through: :productcategories
  has_many :comments

  def comment_counter
  	comments.count
  end

  def rating_by user
  	ratings.find_by(user_id: user).rating
  end

  def average_rating
    ratings.sum(:rating)/ratings.count
  end

  def rating_counter
    ratings.group(:rating).count
  end

end
