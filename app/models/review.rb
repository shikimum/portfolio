class Review < ApplicationRecord
  include RansackableAttributes
  belongs_to :manga
  belongs_to :user

  validates :body, presence: true, length: { maximum: 300 }

  def self.ransackable_attributes(auth_object = nil)
    [ "manga_title" ]
  end
end
