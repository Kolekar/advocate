# == Schema Information
#
# Table name: districts
#
#  id         :integer          not null, primary key
#  name       :string
#  state_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

# This includes all disrict states
class District < ActiveRecord::Base
  belongs_to :state
  has_many :cases
  has_many :courts
end
