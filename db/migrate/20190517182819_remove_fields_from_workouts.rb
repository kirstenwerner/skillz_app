class RemoveFieldsFromWorkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :athlete_ids
    remove_column :workouts, :skillz_ids
  end
end
