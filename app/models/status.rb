# == Schema Information
#
# Table name: statuses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#

# This includes Case Status
class Status < ActiveRecord::Base
  has_many :cases
end
