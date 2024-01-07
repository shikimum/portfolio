require 'rails_helper'

RSpec.describe Discussion, type: :model do
  let(:user) { create(:user) }  # テスト用のユーザーを作成する

  it '有効な属性であること' do
    discussion = build(:discussion, user: user)
    expect(discussion).to be_valid
  end

  it 'タイトルがない場合は無効であること' do
    discussion = build(:discussion, title: nil, user: user)
    discussion.valid?
    expect(discussion.errors[:title]).to include('を入力してください')
  end

  it 'タイトルが50文字を超える場合は無効であること' do
    discussion = build(:discussion, title: 'a' * 51, user: user)
    discussion.valid?
    expect(discussion.errors[:title]).to include('は50文字以内で入力してください')
  end

  it 'ボリュームが50文字を超えていても有効であること' do
    discussion = build(:discussion, volume: 'a' * 51, user: user)
    expect(discussion).to be_valid
  end

  it '本文がない場合は無効であること' do
    discussion = build(:discussion, body: nil, user: user)
    discussion.valid?
    expect(discussion.errors[:body]).to include('を入力してください')
  end

  it '本文が1000文字を超える場合は無効であること' do
    discussion = build(:discussion, body: 'a' * 1001, user: user)
    discussion.valid?
    expect(discussion.errors[:body]).to include('は1000文字以内で入力してください')
  end
end
