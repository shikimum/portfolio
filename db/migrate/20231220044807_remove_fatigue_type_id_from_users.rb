class RemoveFatigueTypeIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :users, :fatigue_types
  end
end
