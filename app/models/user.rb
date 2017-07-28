class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable

  has_many :payments
  has_many :comments
  has_many :products
  has_many :orders
  has_many :ratings
end
