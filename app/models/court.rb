# == Schema Information
#
# Table name: courts
#
#  id               :integer          not null, primary key
#  court_complex_id :integer
#  name             :string
#  court_id         :string
#  created_at       :datetime
#  updated_at       :datetime
#

# This includes Indian Courts
class Court < ActiveRecord::Base
  belongs_to :district
  has_many :cases
end
