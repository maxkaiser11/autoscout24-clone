class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :reservations
  validates :type_of_vehicle, :title, :price_per_day, :location, :brand, :model, :description, :year, presence: true
end
