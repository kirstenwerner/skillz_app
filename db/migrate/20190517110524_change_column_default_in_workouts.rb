class ChangeColumnDefaultInWorkouts < ActiveRecord::Migration[5.2]
  def change
    change_column_default :workouts, :skillz_ids, []
    change_column_default :workouts, :athlete_ids, []
  end
end
