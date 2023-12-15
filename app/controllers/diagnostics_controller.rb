class DiagnosticsController < ApplicationController
skip_before_action :require_login, only: %i[new create index]

  def new; end

  def index
    @questions = Question.all
  end

  def create
    @answer = UserAnswer.new(user_answer_params)

    # ポイントを集計するハッシュを初期化
    @faigue_points = Hash.new(0)

    answers.each do |index, answer|
      # ユーザーの回答を取得
      user_answer = UserAnswer.find_by(question_id: index.to_i, answer: answer)

      if user_answer
        # ポイントを加算
        @faigue_points[user_answer.fatigue_id] += user_answer.point
      end
    end

    # 一番ポイントが大きい疲労タイプを取得
    max_fatigue_id = @faigue_points.max_by { |_id, points| points }.first
    @your_fatigue = FatigueType.find(max_fatigue_id) # 一番ポイントが大きい疲労タイプを取得

    # 子供がいないと回答した時に、育児疲れタイプにならないようにする。
    # 結果タイプによって背景の色を変えたい。
  end

  private
  
  def answer_params
    params.require(:user_answer).permit(:question_id, :answer, :point)
  end

  def all_questions_answered?
    # 質問に対する回答が全て揃っているかどうかを確認するロジックを実装
    # 例えば、params[:answers] に回答が含まれているかどうかを確認するなど
      # 質問の数と回答の数が一致するかどうかを確認
  return params[:answers].keys.size == @questions.size
  end
end
