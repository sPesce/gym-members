class GymMember < ApplicationRecord
  belongs_to :gym
  belongs_to :member
end
