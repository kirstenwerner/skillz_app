class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.array :athlete_ids
      t.array :skill_ids

      t.timestamps
    end
  end
end
