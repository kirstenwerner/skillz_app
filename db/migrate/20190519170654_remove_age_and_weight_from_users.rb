class RemoveAgeAndWeightFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :age
    remove_column :users, :weight
  end
end
