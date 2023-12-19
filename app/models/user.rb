class User < ApplicationRecord
  authenticates_with_sorcery!
  belongs_to :fatigue_type
  has_many :reviews, dependent: :destroy

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :users_name, presence: true, length: { maximum: 100 }
  validates :email, presence: true, uniqueness: true
end
