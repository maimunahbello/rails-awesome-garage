class Review < ApplicationRecord
  belongs_to :car

  validates :rating, numericality: { only_integer: true }
  validates :comment, presence: true
end
