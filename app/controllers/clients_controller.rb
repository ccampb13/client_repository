class ClientsController < ApplicationController
  before_action :load_clients

  def index
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.save
    redirect_to clients_path
  end

  protected

  def client_params
    params.require(:client).permit(:name)
  end

  def load_clients
    @clients = Client.all
  end
end
