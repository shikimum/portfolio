class AddFatigueTypeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :fatigue_type, foreign_key: true
  end
end
