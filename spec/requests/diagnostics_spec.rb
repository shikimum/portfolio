require 'rails_helper'

RSpec.describe "Diagnostics", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get diagnostics_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    context "答えがイライラになる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "イライラ") }
      it "returns http success" do
        post diagnostics_path, params: { answers: {"1"=>"false", "2"=>"true", "3"=>"false", "4"=>"true", "5"=>"true", "6"=>"true", "7"=>"true", "8"=>"true", "9"=>"true", "10"=>"true"} }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えが人間関係になる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "人間関係") }
      it "returns http success" do
        post diagnostics_path, params: { answers: {"1"=>"true", "2"=>"true", "3"=>"true", "4"=>"true", "5"=>"true", "6"=>"true", "7"=>"true", "8"=>"true", "9"=>"true", "10"=>"true"} }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えがエネルギー不足になる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "エネルギー不足") }
      it "returns http success" do
        post diagnostics_path, params: { answers: {"1"=>"false", "2"=>"false", "3"=>"false", "4"=>"false", "5"=>"false", "6"=>"false", "7"=>"false", "8"=>"false", "9"=>"false", "10"=>"false"} }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えが不眠になる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "不眠") }
      it "returns http success" do
        post diagnostics_path, params: { answers: {"1"=>"true", "2"=>"true", "3"=>"false", "4"=>"false", "5"=>"false", "6"=>"false", "7"=>"false", "8"=>"true", "9"=>"true", "10"=>"true"} }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えがホルモンバランスの乱れになる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "ホルモンバランスの乱れ") }
      it "returns http success" do
        post diagnostics_path, params: { answers: {"1"=>"false", "2"=>"false", "3"=>"true", "4"=>"false", "5"=>"true", "6"=>"false", "7"=>"false", "8"=>"true", "9"=>"false", "10"=>"false"} }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
    context "答えが育児になる場合" do
      let(:your_fatigue_type) { FatigueType.find_by(name: "育児") }
      it "returns http success" do
        post diagnostics_path, params: { answers: {"1"=>"false", "2"=>"false", "3"=>"false", "4"=>"true", "5"=>"false", "6"=>"false", "7"=>"true", "8"=>"false", "9"=>"false", "10"=>"true"} }
        expect(response).to redirect_to(result_diagnostics_path(your_fatigue_id: your_fatigue_type.id))
      end
    end
  end
end