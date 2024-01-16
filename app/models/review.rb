class Review < ApplicationRecord
  belongs_to :manga
  belongs_to :user

  validates :body, presence: true, length: { maximum: 300 }

  def self.ransackable_associations(_auth_object = nil)
    %w[manga user]
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[body created_at id manga_id updated_at user_id]
  end
end
