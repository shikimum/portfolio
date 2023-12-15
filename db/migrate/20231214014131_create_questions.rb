class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title

      t.timestamps
    end
    Question.create(title: '栄養バランスのとれた食事、心身のリフレッシュ、十分な休養が取れている')
    Question.create(title: '完璧主義だと思う')
    Question.create(title: '自分がどう思われるのか気になって仕方がない')
    Question.create(title: '「こうあるべき」という自分の理想やものさしが明確にある')
    Question.create(title: 'ストレスを感じやすい')
    Question.create(title: '内向的な性格である')
    Question.create(title: '一人の時間が持てない')
    Question.create(title: '以前に比べて集中できなくなった')
    Question.create(title: '「オフ」の時にも仕事や家庭のことを考える')
    Question.create(title: '子供がいる')
  end
end
