class Offer < ApplicationRecord
  belongs_to :user
  has_many :comment
  has_many :booking
end
