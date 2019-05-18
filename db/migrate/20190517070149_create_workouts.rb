class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :athlete_ids, array: true
      t.integer :skill_ids, array: true

      t.timestamps
    end
  end
end
