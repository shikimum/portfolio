class Review < ApplicationRecord
  belongs_to :manga
  belongs_to :user

  validates :body, presence: true, length: { maximum: 300 }

  def self.ransackable_associations(auth_object = nil)
    ["manga", "user"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "id", "manga_id", "updated_at", "user_id"]
  end
end
