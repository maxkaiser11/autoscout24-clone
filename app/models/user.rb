class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :vehicles
  has_many :reservations
  has_one_attached :photo

  def vehicle_owner?
    vehicles.any?
  end
end
