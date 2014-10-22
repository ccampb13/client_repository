class HomeController < ApplicationController
  def index
    @stakeholders = Stakeholder.all
    @clients = Client.all
    @products = Product.all
  end
end
