class Vehicle < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :reservations
  validates :type_of_vehicle, :title, :price_per_day, :location, :brand, :model, :description, :year, presence: true

  pg_search_scope :search_by_model_and_brand,
  against: [ :model, :brand ],
  using: {
    tsearch: { prefix: true }
  }

end
