class DiagnosticsController < ApplicationController
  skip_before_action :require_login, only: %i[new create index result]

  def new; end

  def index
    @questions = Question.all
  end


  def create
    answers = answer_params

    # ポイントを集計するハッシュを初期化
    @faigue_points = Hash.new(0)

    answers.each do |index, answer|
      # ユーザーの回答を取得
      user_answers = UserAnswer.where(question_id: index.to_i, answer: answer)
      puts "-調査-"
      puts user_answers.inspect
      puts "----"
      user_answers.each do |user_answer|
        # ポイントを加算
        @faigue_points[user_answer.fatigue_type_id] += user_answer.point
      end
    end

    # 質問IDが10で回答がfalseの場合の条件分岐(子供がいないと回答した時に、育児疲れタイプにならないようにする。)
    if answers[10] == 'false'
      max_fatigue_ids = @faigue_points.sort_by { |_id, points| points }.reverse.to_h.keys

      # 同点の場合、ランダムで疲労タイプを選択
      if max_fatigue_ids.size > 1 && @faigue_points[max_fatigue_ids[0]] == @faigue_points[max_fatigue_ids[1]]
        max_fatigue_ids = max_fatigue_ids.select { |id| @faigue_points[id] == @faigue_points[max_fatigue_ids[0]] }
        max_fatigue_id = max_fatigue_ids.sample
      else
        max_fatigue_id = max_fatigue_ids[0] # 一番ポイントが高い疲労タイプのID
      end
    else
      # 一番ポイントが大きい疲労タイプを取得
      puts "-調査-"
      puts @faigue_points.inspect
      puts "----"
      max_fatigue_id = @faigue_points.max_by { |_id, points| points }.first
    end

    @your_fatigue = FatigueType.find(max_fatigue_id) # 一番ポイントが大きい疲労タイプを取得

    if all_questions_answered?
      if current_user
        current_user.fatigue_type_id = @your_fatigue.id
        current_user.save!
      end
      redirect_to result_diagnostics_path(your_fatigue_id: max_fatigue_id)
    else
      flash.now[:danger] = t('diagnostic.create.failure')
      render :index, status: :unprocessable_entity
    end
  end

  def result
    @fatigue_type_id = params[:your_fatigue_id] # show ページに渡された疲労タイプのID
    @your_fatigue = FatigueType.find(@fatigue_type_id)
    # 対応する manga と aroma を取得
    @mangas = Manga.where(fatigue_type_id: @fatigue_type_id)
    puts "-調査-"
    puts @mangas.inspect
    puts "----"
    @aromas = Aroma.where(fatigue_type_id: @fatigue_type_id)
    puts "-調査-"
    puts @aromas.inspect
    puts "----"
  end

  private

  def answer_params
    params.require(:answers)
  end

  def all_questions_answered?
    # 質問の数と回答の数が一致するかどうかを確認
    params[:answers].keys.size == Question.all.size
  end
end