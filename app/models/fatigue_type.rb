class FatigueType < ApplicationRecord
  has_many :user_answers
  has_many :mangas
  has_many :aromas
  belongs_to :user
end
