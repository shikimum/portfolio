class Review < ApplicationRecord
  belongs_to :manga
  belongs_to :user

  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 300 }
end