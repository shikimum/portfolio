class UserAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :fatigue_type
end
