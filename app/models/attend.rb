class Attend < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :plan

  # validations
  validates :user_id, presence: true, uniqueness: { scope: [:user_id, :plan_id] }
  validates :plan_id, presence: true, uniqueness: { scope: [:user_id, :plan_id] }
end
