# == Schema Information
#
# Table name: case_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#

# This includes cases type
class CaseType < ActiveRecord::Base
  has_many :cases
end
