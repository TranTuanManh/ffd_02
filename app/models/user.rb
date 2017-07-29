class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable

  has_many :payments
  has_many :comments, dependent: :destroy
  has_many :products
  has_many :orders
  has_many :ratings, dependent: :destroy
  has_many :rateds, through: :ratings, source: :product

  def author? comment
  	self == comment.user
  end

  def rating product, score
    unless self.rating? product
     rateds << product
    end
    ratings.find_by(product_id: product.id).update_score score
  end

  def rating? product
    rateds.include? product
  end
end
