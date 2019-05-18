class ChangeColumnInWorkouts < ActiveRecord::Migration[5.2]
  def change
    rename_column :workouts, :skill_ids, :skillz_ids
  end
end
