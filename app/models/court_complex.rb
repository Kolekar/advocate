# == Schema Information
#
# Table name: court_complexes
#
#  id               :integer          not null, primary key
#  name             :string
#  court_complex_id :string
#  district_id      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CourtComplex < ActiveRecord::Base
end
