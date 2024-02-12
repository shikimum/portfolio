class RemoveIsbnFromManga < ActiveRecord::Migration[7.0]
  def change
    remove_column :mangas, :isbn, :string
  end
end
