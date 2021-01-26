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
require 'rails_helper'

RSpec.describe Plan, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
