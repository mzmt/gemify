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
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
