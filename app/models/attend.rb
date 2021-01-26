# == Schema Information
#
# Table name: attends
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  plan_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Attend < ApplicationRecord
  # associations
  # belongs_to :user
  # belongs_to :plan

  # validations
  validates :user_id, presence: true, uniqueness: { scope: [:user_id, :plan_id] }
  validates :plan_id, presence: true, uniqueness: { scope: [:user_id, :plan_id] }
end
