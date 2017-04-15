# == Schema Information
#
# Table name: courts
#
#  id          :integer          not null, primary key
#  district_id :integer
#  name        :string
#  created_at  :datetime
#  updated_at  :datetime
#

# This includes Indian Courts
class Court < ActiveRecord::Base
  belongs_to :district
  has_many :cases
end
