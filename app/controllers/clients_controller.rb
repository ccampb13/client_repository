class ClientsController < ApplicationController

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.save
    redirect_to root_path
  end

  def show
    @client = Client.find(params[:id])
    @stakeholders = @client.stakeholders
    @products = @client.products
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(client_params)
      redirect_to client_path(@client)
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to root_path
  end

  protected

  def client_params
    params.require(:client).permit(:name, stakeholder_ids: [], product_ids: [])
  end
end
