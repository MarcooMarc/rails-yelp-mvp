class Review < ApplicationRecord
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :address, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }, presence: true
end
