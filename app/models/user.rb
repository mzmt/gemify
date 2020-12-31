class User < ApplicationRecord
  # associations
  has_many :plans

  # validations
  validates :name, presence: true, length: { maximum: 63 }
  validates :twitter_id, presence: true, length: { maximum: 63 }
end
