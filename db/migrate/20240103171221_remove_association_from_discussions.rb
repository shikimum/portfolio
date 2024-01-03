class RemoveAssociationFromDiscussions < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :discussions, :mangas
    remove_reference :discussions, :manga, index: true
  end
end
