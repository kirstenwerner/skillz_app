class Workout < ApplicationRecord
  has_many :workout_skills
  has_many :skills, through: :workout_skills
  accepts_nested_attributes_for :workout_skills 
  accepts_nested_attributes_for :skills
end
