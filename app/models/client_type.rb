# == Schema Information
#
# Table name: client_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#

# This includes client type
class ClientType < ActiveRecord::Base
end
