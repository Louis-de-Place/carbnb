class Offer < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  validates :price, :brand, :model, :year, :km, :address, :availability_end, :availability_start, presence: true

  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
