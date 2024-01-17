class User < ApplicationRecord
  authenticates_with_sorcery!
  belongs_to :fatigue_type, optional: true
  has_many :reviews, dependent: :destroy
  has_many :discussions, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :mangas, dependent: :destroy
  has_many :like_mangas, through: :likes, source: :manga

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :users_name, presence: true, length: { maximum: 100 }
  validates :email, presence: true, uniqueness: true
  validates :reset_password_token, uniqueness: true, allow_nil: true

  # likes_mangasテーブルにpostオブジェクトを追加する。
  # いいねを押したときに、いいねしたユーザーといいねされた投稿の情報が保存される。
  def like(manga)
    like_mangas << manga
  end

  # likes_mangasテーブルから引数のpostオブジェクトに該当するレコードを削除する。
  def unlike(manga)
    like_mangas.destroy(manga)
  end

  # likes_mangasテーブルに引数のpostオブジェクトに該当するレコードがあるかを判断する。
  def like?(manga)
    like_mangas.include?(manga)
  end

  def own?(object)
    id == object&.user_id
  end
end

def self.from_omniauth(auth)
  user = find_by(email: auth.info.email)

  unless user
    user = create(
      email: auth.info.email,
      password: SecureRandom.hex(10) # ランダムなパスワードを生成
    )
  end

  user.authentications.create(provider: auth.provider, uid: auth.uid)

  user
end