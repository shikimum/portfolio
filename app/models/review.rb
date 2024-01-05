class Review < ApplicationRecord
  belongs_to :manga
  belongs_to :user

  validates :body, presence: true, length: { maximum: 300 }
end
