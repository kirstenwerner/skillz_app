class Workout < ApplicationRecord
  has_many :workout_skills
  has_many :skills, through: :workout_skills
  has_many :workout_users
  has_many :users, through: :workout_users

  accepts_nested_attributes_for :workout_skills
  accepts_nested_attributes_for :skills
  accepts_nested_attributes_for :workout_users
  accepts_nested_attributes_for :users

  def date
    self.created_at.to_formatted_s(:long_ordinal)[0...-6]
  end

  def self.today
    @workout = Workout.where({ created_at: (Time.now.midnight)..Time.now.midnight + 1.day})
  end

  def self.create_or_update_skills(workout, params)
    skills = []
    @skill_work = []
    params.values.each do |skill_hash|
      skill_hash.each do |key, value|
        if !key.include? "work"
          skills << Skill.find(value) unless value.to_i == 0
        else
          @skill_work << value unless value == ""
        end
      end
    end
    workout.skills << skills
  end

  def self.create_or_update_work(workout)
    workout.skills.each_with_index do |skill, i|
      workout.workout_skills[i].work = @skill_work[i]
    end
    workout.save
  end
end
