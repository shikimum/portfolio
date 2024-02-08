class AddIsbnToMangas < ActiveRecord::Migration[7.0]
  def change
    add_column :mangas, :isbn, :string
  end
end
