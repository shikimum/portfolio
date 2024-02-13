class AddDescriptionToAroma < ActiveRecord::Migration[7.0]
  def change
    add_column :aromas, :description, :string
  end
end
