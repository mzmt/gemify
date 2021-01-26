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
FactoryBot.define do
  factory :plan do
    name { "MyString" }
    start_date { "2020-10-05 01:20:55" }
    end_date { "2020-10-05 01:20:55" }
    twicall_url { "MyString" }
  end
end
