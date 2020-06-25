class Member < ApplicationRecord
  has_many :gym_members
  has_many :gyms, through: :gym_members
end
