class Skill < ApplicationRecord
  validates :name, presence: true
  validates :target, presence: true

  has_many :workout_skills
  has_many :workouts, through: :workout_skills
  accepts_nested_attributes_for :workout_skills


  def self.for_target(target)
    @skills = Skill.where(target: target)
  end
end
