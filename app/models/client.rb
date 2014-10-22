class Client < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :client_stakeholders
  has_many :stakeholders, through: :client_stakeholders
end
