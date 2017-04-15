# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#

# This includes States
class State < ActiveRecord::Base
  has_many :cases
  has_many :districts
end
