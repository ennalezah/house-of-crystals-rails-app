class Address < ApplicationRecord
  belongs_to :user

  validates :address_1, :city, :state, :zipcode, presence: true
  validates :address_2, format: { with: /\A[\w\s\/\.\#]+\z/ }, allow_blank: true
end
