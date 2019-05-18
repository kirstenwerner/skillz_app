class Workout < ApplicationRecord
  has_many :workout_skills
  has_many :skills, through: :workout_skills

  accepts_nested_attributes_for :workout_skills
  accepts_nested_attributes_for :skills

  has_many :workout_users
  has_many :users, through: :workout_users
  
  accepts_nested_attributes_for :workout_users
  accepts_nested_attributes_for :users

  def date
    self.created_at.to_formatted_s(:long_ordinal)[0...-6]
  end

  def self.today
    @workout = Workout.where({ created_at: (Time.now.midnight - 1.day)..Time.now.midnight })
  end
end
