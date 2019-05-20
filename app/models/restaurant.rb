class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :address, :category, :name, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
