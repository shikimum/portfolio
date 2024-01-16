class Discussion < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 50 }
  validates :volume, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 1000 }

  def self.ransackable_associations(_auth_object = nil)
    %w[title volume]
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[title body created_at id updated_at volume]
  end
end
