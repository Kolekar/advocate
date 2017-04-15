# == Schema Information
#
# Table name: cases
#
#  id                    :integer          not null, primary key
#  user_id               :integer
#  status_id             :integer
#  state_id              :integer
#  district_id           :integer
#  cort_id               :integer
#  case_type_id          :integer
#  case_no               :string
#  type_of_client_id     :integer
#  type_of_opposition_id :integer
#  created_at            :datetime
#  updated_at            :datetime
#

# This includes lowers cases
class Case < ActiveRecord::Base
  belongs_to :status
  belongs_to :state
  belongs_to :district
  belongs_to :court
  belongs_to :case_type
  belongs_to :type_of_opposition, class_name: 'ClientType', foren_key: :type_of_client_id
  belongs_to :type_of_client, class_name: 'ClientType', foren_key: :type_of_client_id
  belongs_to :user
  has_and_belongs_to_many :clients
  has_many :oppositions
  has_many :postings
end
