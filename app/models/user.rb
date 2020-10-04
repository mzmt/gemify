class User < ApplicationRecord
  # associations
  has_many :attends
  has_many :plans, through: :attends

  # validations
  validates :name, presence: true, length: { maximum: 63 }
  validates :twitter_id, presence: true, length: { maximum: 63 }
end
