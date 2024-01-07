require 'rails_helper'

RSpec.describe Review, type: :model do
  it '本文は必須であること' do
    review = build(:review, body: nil)
    expect(review).to be_invalid
    expect(review.errors[:body]).to include("を入力してください")
  end

  it '本文は300文字以内であること' do
    review = build(:review, body: 'a' * 301)
    expect(review).to be_invalid
    expect(review.errors[:body]).to include('は300文字以内で入力してください')
  end
end