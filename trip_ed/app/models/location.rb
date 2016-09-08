class Location < ApplicationRecord
  has_many :trips

    def self.search(search)
      where("name ilike ?", "%#{search}%").or(where("address ilike ?", "%#{search}%")).or(
      where("description ilike ?", "%#{search}%")).or(where("subject ilike ?", "%#{search}%")).or(
      where("accessibility ilike ?", "%#{search}%"))
    end
end
