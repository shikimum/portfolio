class RemoveForeignKeyFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_index :users, :fatigue_type_id
    remove_column :users, :fatigue_type_id, :bigint
  end
end
