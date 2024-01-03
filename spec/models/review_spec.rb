require 'rails_helper'

RSpec.describe Review, type: :model do
  it 'タイトルと本文があり、タイトルは50文字以内、本文は300文字以内であれば有効であること' do
    review = build(:review) # review Factoryを使用する
    expect(review).to be_valid
  end

  it 'タイトルは必須であること' do
    review = build(:review, title: nil)
    expect(review).to be_invalid
    expect(review.errors[:title]).to include("can't be blank")
  end

  it '本文は必須であること' do
    review = build(:review, body: nil)
    expect(review).to be_invalid
    expect(review.errors[:body]).to include("can't be blank")
  end

  it 'タイトルは50文字以内であること' do
    review = build(:review, title: 'a' * 51)
    expect(review).to be_invalid
    expect(review.errors[:title]).to include('is too long (maximum is 50 characters)')
  end

  it '本文は300文字以内であること' do
    review = build(:review, body: 'a' * 301)
    expect(review).to be_invalid
    expect(review.errors[:body]).to include('is too long (maximum is 300 characters)')
  end
end