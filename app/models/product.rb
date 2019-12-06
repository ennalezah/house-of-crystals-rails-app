class Product < ApplicationRecord
  belongs_to :category

  COLOR = %w{ Red Orange Yellow Green Blue Purple Pink Silver White Combination }
end
