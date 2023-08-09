class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
end

# DONE A review must belong to a restaurant.
# DONE A review must have a content.
# DONE A review must have a rating.
# DONE A review’s rating must be a number between 0 and 5.
# DONE A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
