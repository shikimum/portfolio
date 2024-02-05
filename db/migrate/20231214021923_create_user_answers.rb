class CreateUserAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :user_answers do |t|
      t.references :question, null: false, foreign_key: true
      t.boolean :answer
      t.references :fatigue_type, null: false, foreign_key: true
      t.integer :point

      t.timestamps
    end
  end
end
