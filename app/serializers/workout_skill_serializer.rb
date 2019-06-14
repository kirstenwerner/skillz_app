class WorkoutSkillSerializer < ActiveModel::Serializer
  attributes :id, :work, :workout_id, :skill_id
  belongs_to :workout
  belongs_to :skill 
end
