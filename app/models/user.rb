# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  twitter_id :string           not null
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  # associations
  has_many :plans

  # validations
  validates :name, presence: true, length: { maximum: 63 }
  validates :twitter_id, presence: true, length: { maximum: 63 }
end
