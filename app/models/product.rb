class Product < ActiveRecord::Base
  validates_presence_of :name
  has_many :client_products
  has_many :clients, through: :client_products
end
