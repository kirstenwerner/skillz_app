class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :coach_id
  has_many :skills
  has_many :users
  has_many :workout_skills
end
