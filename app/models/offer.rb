class Offer < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  validates :price, :brand, :model, :year, :km, :address, :availability_end, :availability_start, presence: true

  has_many_attached :photos
end
