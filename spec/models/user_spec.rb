require 'rails_helper'

RSpec.describe User, type: :model do
  it 'ユーザー名、メールがあり、パスワードは6文字以上であれば有効であること' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'メールはユニークであること' do
    user1 = create(:user)
    user2 = build(:user)
    user2.email = user1.email
    user2.valid?
    expect(user2.errors[:email]).to include('はすでに存在します')
  end

  it 'メールアドレス,ユーザー名は必須項目であること' do
    user = build(:user)
    user.email = nil
    user.users_name = nil
    user.valid?
    expect(user.errors[:email]).to include('を入力してください')
    expect(user.errors[:users_name]).to include('を入力してください')
  end

  it 'ユーザー名は100文字以下であること' do
    user = build(:user)
    user.users_name = 'a' * 101
    user.valid?
    expect(user.errors[:users_name]).to include('は100文字以内で入力してください')
  end
end
