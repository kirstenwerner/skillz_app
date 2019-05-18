class AddColumnToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :workout_ids, :integer, array: true, default: []
  end
end
