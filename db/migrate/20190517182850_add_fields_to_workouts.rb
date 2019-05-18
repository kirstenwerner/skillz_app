class AddFieldsToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :coach_id, :integer
  end
end
