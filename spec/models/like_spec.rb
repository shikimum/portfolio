require 'rails_helper'

RSpec.describe Like, type: :model do
  context 'ユーザーと掲示板の組み合わせがユニークでない場合' do
    it '無効であること' do
      puts "--- Manga.all.spec ---"
      puts Manga.all.inspect
      puts "---"
      like = create(:like)
      new_like = build(:like, user: like.user, manga: like.manga)
      new_like.valid?
      expect(new_like.errors[:user_id]).to include('はすでに存在します'), 'likeとuserのユニークバリデーションが設定されていません'
    end
  end
end
