class User < ApplicationRecord
  has_many :trips


  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("description LIKE ?", "%#{search}%")
    where("subject LIKE ?", "%#{search}%")
    where("accessibility LIKE ?", "%#{search}%")
  end

end
