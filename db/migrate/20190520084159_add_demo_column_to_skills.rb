class AddDemoColumnToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :demo, :string
  end
end
