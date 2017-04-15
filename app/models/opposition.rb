# == Schema Information
#
# Table name: oppositions
#
#  id          :integer          not null, primary key
#  advocate    :string
#  mobile      :string
#  name        :string
#  email       :string
#  address     :text
#  city        :string
#  district_id :integer
#  case_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

# This includes case opposition
class Opposition < ActiveRecord::Base
  belongs_to :case
end
