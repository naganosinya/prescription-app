# == Schema Information
#
# Table name: microposts
#
#  id         :bigint           not null, primary key
#  allow      :boolean
#  content    :text             not null
#  radio_type :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Micropost < ApplicationRecord
end
