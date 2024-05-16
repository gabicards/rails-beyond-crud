class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # If I destroy the restaurant, the reviews will also be destroyed
  # If have a restaurant, I can do restaurant.reviews
end
