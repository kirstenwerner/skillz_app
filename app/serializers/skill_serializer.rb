class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :target, :demo
  has_many :workouts 
end
