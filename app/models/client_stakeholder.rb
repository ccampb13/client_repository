class ClientStakeholder < ActiveRecord::Base
  belongs_to :client
  belongs_to :stakeholder
end
