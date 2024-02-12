class AddGoogleBookApiIdToManga < ActiveRecord::Migration[7.0]
  def change
    add_column :mangas, :google_book_api_id, :string
  end
end
