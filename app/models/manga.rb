class Manga < ApplicationRecord
  belongs_to :fatigue_type
  has_many :reviews
end
