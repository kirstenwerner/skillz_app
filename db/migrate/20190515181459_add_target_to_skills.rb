class AddTargetToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :target, :string
  end
end
