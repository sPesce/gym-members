class Member < ApplicationRecord
  has_many :gym_members
  has_many :gyms, through: :gym_members
  
  def to_s
    self.first_name + " " + self.last_name
  end
  
end
