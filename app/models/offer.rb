class Offer < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :bookings
end
