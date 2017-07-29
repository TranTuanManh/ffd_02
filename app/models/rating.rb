class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :product

  scope :by_rating, ->(score){where rating: score}

  def update_score score
  	update_attributes rating: score
  end

end
