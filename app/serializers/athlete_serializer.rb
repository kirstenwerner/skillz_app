class AthleteSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :coach

  has_many :workouts
end
