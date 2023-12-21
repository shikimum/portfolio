class CreateDiscussions < ActiveRecord::Migration[7.0]
  def change
    create_table :discussions do |t|
      t.string :title
      t.text :body
      t.integer :volume
      t.references :user, null: false, foreign_key: true
      t.references :manga, null: false, foreign_key: true

      t.timestamps
    end
  end
end
