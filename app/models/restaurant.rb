class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true

  category_names = %w[chinese italian japanese french belgian]
  validates :category, inclusion: category_names
end
