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
#  icon_url   :string
#
class User < ApplicationRecord
  authenticates_with_sorcery!

  # associations
  has_many :plans
  has_one :authentication, dependent: :destroy
  accepts_nested_attributes_for :authentication

  # validations
  validates :name, presence: true, length: { maximum: 63 }
  validates :icon_url, presence: true, length: { maximum: 127 }
  validates :twitter_id, presence: true, length: { maximum: 63 }
  validates :email, length: { maximum: 63 }
end
