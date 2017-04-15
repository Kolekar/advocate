# == Schema Information
#
# Table name: clients
#
#  id          :integer          not null, primary key
#  mobile      :string
#  name        :string
#  email       :string
#  address     :text
#  city        :string
#  district_id :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

# This includes case clients
class Client < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :cases
end
