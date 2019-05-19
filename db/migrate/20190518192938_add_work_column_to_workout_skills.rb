class AddWorkColumnToWorkoutSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :workout_skills, :work, :string
  end
end
