class CreateWorkoutAthletes < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_athletes do |t|
      t.integer :workout_id
      t.integer :athlete_id

      t.timestamps
    end
  end
end
