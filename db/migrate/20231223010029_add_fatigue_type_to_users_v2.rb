class AddFatigueTypeToUsersV2 < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :fatigue_type, index: true
  end
end
