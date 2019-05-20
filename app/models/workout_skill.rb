class WorkoutSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :workout  
end
