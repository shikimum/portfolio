require 'rails_helper'

RSpec.describe "Diagnostics", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get diagnostics_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /result" do
    it "returns http success" do
      get result_diagnostics_path
      expect(response).to have_http_status(:success)
    end
    context "your_fatigue_typeがイライラに選ばれた状態" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "イライラ") }
      it "returns http success" do
        get result_diagnostics_path(your_fatigue_id: your_fatigue_type.id)
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe "POST /create" do
    context "答えがイライラになる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "イライラ") }
      it "returns http success" do
        post diagnostics_path, params: { answers: { "1" => "false", "2" => "true", "3" => "false", "4" => "true", "5" => "true", "6" => "true", "7" => "true", "8" => "true", "9" => "true", "10" => "true" } }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えが人間関係になる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "人間関係") }
      it "returns http success" do
        post diagnostics_path, params: { answers: { "1" => "true", "2" => "true", "3" => "true", "4" => "true", "5" => "true", "6" => "true", "7" => "true", "8" => "true", "9" => "true", "10" => "true" } }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えがエネルギー不足になる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "エネルギー不足") }
      it "returns http success" do
        post diagnostics_path, params: { answers: { "1" => "false", "2" => "false", "3" => "false", "4" => "false", "5" => "false", "6" => "false", "7" => "false", "8" => "false", "9" => "false", "10" => "false" } }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えが不眠になる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "不眠") }
      it "returns http success" do
        post diagnostics_path, params: { answers: { "1" => "true", "2" => "true", "3" => "false", "4" => "false", "5" => "false", "6" => "false", "7" => "false", "8" => "true", "9" => "true", "10" => "true" } }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えがホルモンバランスの乱れになる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "ホルモンバランスの乱れ") }
      it "returns http success" do
        post diagnostics_path, params: { answers: { "1" => "false", "2" => "false", "3" => "true", "4" => "false", "5" => "true", "6" => "false", "7" => "false", "8" => "true", "9" => "false", "10" => "false" } }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えが育児になる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "育児") }
      it "returns http success" do
        post diagnostics_path, params: { answers: { "1" => "false", "2" => "false", "3" => "false", "4" => "true", "5" => "false", "6" => "false", "7" => "true", "8" => "false", "9" => "false", "10" => "true" } }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えが回答されなかった場合" do
      it "診断スタートページへ移行される" do
        post diagnostics_path, params: { answers: { "1" => "false", "2" => nil, "3" => "false", "4" => "true", "5" => "false", "6" => "false", "7" => "true", "8" => "false", "9" => "false", "10" => "true" } }
        expect(response).to redirect_to(diagnostics_path)
      end
    end
    context "答えが育児になる場合で、最後の質問に子供なしと答えた場合はエネルギー疲れになる" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "エネルギー不足") }
      it "returns http success" do
        post diagnostics_path, params: { answers: { "1" => "false", "2" => "false", "3" => "false", "4" => "true", "5" => "false", "6" => "false", "7" => "true", "8" => "false", "9" => "false", "10" => "false" } }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "ユーザーがログインしている場合" do
      let(:user) { create(:user, password: password, password_confirmation: password) }
      let(:password) { "kkkkkk" }
      let(:your_fatigue_type) { FatigueType.find_by(name: "ホルモンバランスの乱れ") }
      before do
        post login_path, params: { user: { email: user.email, password: password } }
      end
      it "選ばれたタイプがユーザーと紐づけられる" do
        post diagnostics_path, params: { answers: { "1" => "false", "2" => "false", "3" => "true", "4" => "false", "5" => "true", "6" => "false", "7" => "false", "8" => "true", "9" => "false", "10" => "false" } }
        user.reload # ユーザーオブジェクトを再読み込みして最新の情報を取得
        expect(user.fatigue_type_id).to eq(your_fatigue_type.id)
      end
    end
  end
end
