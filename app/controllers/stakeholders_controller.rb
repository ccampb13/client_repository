class StakeholdersController < ApplicationController
  before_action :load_client

  def index
  end

  def new
  end

  def create
  end

  protected

  def stakeholder_params
    params.require(:stakeholder).permit(:name)
  end

  def load_client
    @client = Client.find(params[:client_id])
  end
end
