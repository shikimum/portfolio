class CreateAromas < ActiveRecord::Migration[7.0]
  def change
    create_table :aromas do |t|
      t.string :name
      t.references :fatigue_type, null: false, foreign_key: true

      t.timestamps
    end
    Aroma.create(fatigue_type_id: 1, name: "柑橘系")
    Aroma.create(fatigue_type_id: 2, name: "ラベンダー")
    Aroma.create(fatigue_type_id: 3, name: "カモミール")
    Aroma.create(fatigue_type_id: 4, name: "ペパーミント")
    Aroma.create(fatigue_type_id: 5, name: "イランイラン")
    Aroma.create(fatigue_type_id: 6, name: "ゼラニウム")
  end
end
