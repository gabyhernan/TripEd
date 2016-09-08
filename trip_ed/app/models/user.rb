class User < ApplicationRecord
  has_many :trips

    def self.search(search)
      where("name LIKE ?", "%#{search}%")
    end

end
