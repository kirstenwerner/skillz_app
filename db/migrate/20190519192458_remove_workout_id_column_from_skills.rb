class RemoveWorkoutIdColumnFromSkills < ActiveRecord::Migration[5.2]
  def change
    remove_column :skills, :workout_ids
  end
end
