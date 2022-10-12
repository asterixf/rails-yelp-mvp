class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :rating, numericality: {in: (0..5)}
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
end
