class Offer < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  validates :title, :price, :brand, :model, :year, :km, presence: true

  has_many_attached :photos
end
