class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, dependent: :destroy

  validates :brand, presence: true
  validates :model, presence: true
  validates :fuel, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
end
