class Stakeholder < ActiveRecord::Base
  validates_presence_of :name
  has_many :clients, through: :client_stakeholders
  has_many :client_stakeholders
end
