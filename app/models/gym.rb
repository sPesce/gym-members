class Gym < ApplicationRecord
  has_many :gym_members
  has_many :members, through: :gym_members
end
