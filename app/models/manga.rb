class Manga < ApplicationRecord
  belongs_to :fatigue_type
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy

  def self.ransackable_attributes(_auth_object = nil)
    ["title"]
  end
end
