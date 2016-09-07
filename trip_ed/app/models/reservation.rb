class Reservation < ApplicationRecord
  has_many :locations
  has_many :trips
end
