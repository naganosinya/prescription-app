# == Schema Information
#
# Table name: microposts
#
#  id         :bigint           not null, primary key
#  allow      :boolean
#  content    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class MicropostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
