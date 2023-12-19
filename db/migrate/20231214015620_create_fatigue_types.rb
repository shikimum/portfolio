class CreateFatigueTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :fatigue_types do |t|
      t.string :name

      t.timestamps
    end
    FatigueType.create(name: '人間関係')
    FatigueType.create(name: '不眠')
    FatigueType.create(name: 'イライラ')
    FatigueType.create(name: 'エネルギー不足')
    FatigueType.create(name: 'ホルモンバランスの乱れ')
    FatigueType.create(name: '育児')
  end
end
