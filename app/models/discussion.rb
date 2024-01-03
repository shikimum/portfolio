class Discussion < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 50 }
  validates :volume, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 1000 }
end
