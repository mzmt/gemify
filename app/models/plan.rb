# == Schema Information
#
# Table name: plans
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  user_id     :bigint           not null
#  start_date  :datetime         not null
#  end_date    :datetime         not null
#  twicall_url :string
#  emoji       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Plan < ApplicationRecord
  # callbacks
  before_validation :set_emoji

  # associations
  belongs_to :user

  # validations
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 63 }
  validates :start_date, presence: true, uniqueness: { scope: %i[user_id end_date] }
  validates :end_date, presence: true, uniqueness: { scope: %i[user_id start_date] }

  validate :end_is_future_than_start
  validate :twicall_url_format, if: -> { twicall_url }

  def end_is_future_than_start
    errors.add(:end_date, 'は開始時間より後を選択してください') if end_date && start_date && (end_date < start_date)
  end

  def twicall_url_format
    errors.add(:twicall_url, 'の形式が不正です') if twicall_url.exclude('https://twicall.net')
  end

  def set_emoji
    self.emoji = EMOJI.sample
  end

  EMOJI = ['👾', '🐹', '🐶', '🎮', '🏛', '🎹', '👑', '🦋', '💠', '🖼', '🔑', '🏵', '💣', '💰', '🚦', '🎲', '⚽️', '🦑', '🍺', '🍰', '🥁', '🍔', '🥝', '🍎', '🌼', '🍀', '🐳', '🐣', '🌤'].freeze
end
