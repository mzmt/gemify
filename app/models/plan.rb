class Plan < ApplicationRecord
  # associations
  has_many :attends
  has_many :users, through: :attends

  # validations
  validates :user_id, presence: true
  validates :start_date, presence: true, uniqueness: { scope: [:user_id, :end_date] }
  validates :end_date, presence: true, uniqueness: { scope: [:user_id, :start_date] }

  validate :end_is_future_than_start
  validate :twicall_url_format, if: -> { twicall_url }

  def end_is_future_than_start
    errors.add(:end_date, 'は将来の時間を選択してください') if end_date < start_date
  end

  def twicall_url_format
    errors.add(:twicall_url, 'の形式が不正です') if twicall_url.exclude('https://twicall.net')
  end
end
