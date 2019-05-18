class ChangeColumnNameInWorkoutUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :workout_users, :athlete_id, :user_id
  end
end
