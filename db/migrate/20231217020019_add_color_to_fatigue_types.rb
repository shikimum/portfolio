class AddColorToFatigueTypes < ActiveRecord::Migration[7.0]
  def change
    add_column :fatigue_types, :color, :string
  end
end
