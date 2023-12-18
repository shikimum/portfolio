class CreateMangas < ActiveRecord::Migration[7.0]
  def change
    create_table :mangas do |t|
      t.string :title
      t.references :fatigue_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
