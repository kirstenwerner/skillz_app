class Skill < ApplicationRecord
  has_many :user_skills
  has_many :users, through: :user_skills

  def self.for_target(target)
    @skills = Skill.where(target: target)
  end
end
