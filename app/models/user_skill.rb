class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  has_many :workouts
  
end
