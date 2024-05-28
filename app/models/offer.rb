class Offer < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  validates :brand, :model, :year, :km, presence: true

  has_one_attached :photo
end
