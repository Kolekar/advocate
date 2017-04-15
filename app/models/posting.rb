# == Schema Information
#
# Table name: postings
#
#  id                  :integer          not null, primary key
#  posting_date        :date
#  bussness            :text
#  short_order         :text
#  previous_posting_id :integer
#  posting_purpose     :text
#  case_id             :integer
#  created_at          :datetime
#  updated_at          :datetime
#

# This includes Posting
class Posting < ActiveRecord::Base
  belongs_to :case
  has_one :next_posting, class_name: 'Posting', foreign_key: :previous_posting_id
  belongs_to :previous_posting, class_name: 'Posting', foreign_key: :previous_posting_id
end
