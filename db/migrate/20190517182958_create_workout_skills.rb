class CreateWorkoutSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_skills do |t|
      t.integer :workout_id
      t.integer :skill_id 

      t.timestamps
    end
  end
end
