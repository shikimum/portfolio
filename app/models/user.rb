class User < ApplicationRecord
  authenticates_with_sorcery!
  has_one :fatigue_type
  has_many :reviews, dependent: :destroy
  has_many :discussions, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :users_name, presence: true, length: { maximum: 100 }
  validates :email, presence: true, uniqueness: true

  def own?(object)
    id == object&.user_id
  end
end
