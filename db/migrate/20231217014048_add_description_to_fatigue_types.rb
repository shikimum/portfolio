class AddDescriptionToFatigueTypes < ActiveRecord::Migration[7.0]
  def change
    add_column :fatigue_types, :description, :text
  end
end
