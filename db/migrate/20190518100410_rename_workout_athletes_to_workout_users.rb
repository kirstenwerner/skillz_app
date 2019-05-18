class RenameWorkoutAthletesToWorkoutUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :workout_athletes, :workout_users
  end
end
