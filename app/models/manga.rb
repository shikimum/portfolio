class Manga < ApplicationRecord
  belongs_to :fatigue_type
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
end
