class Product < ApplicationRecord
  has_many :orders
  has_many :carts, through: :orders

  COLOR = %w{ Red Orange Yellow Green Blue Purple Pink Silver Black White Combination }
end
