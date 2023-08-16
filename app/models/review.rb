class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  rating_numbers = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: rating_numbers
  validates :rating, numericality: { only_integer: true }
end
