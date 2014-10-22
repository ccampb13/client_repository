class StakeholdersController < ApplicationController
  before_action :load_client

  def index
    @stakeholders = @client.stakeholders.all
  end

  def new
    @stakeholder = Stakeholder.new
  end

  def create
    @stakeholder = @client.stakeholders.build(stakeholder_params)
    @stakeholder.save
    redirect_to client_stakeholders_path
  end

  protected

  def stakeholder_params
    params.require(:stakeholder).permit(:name)
  end

  def load_client
    @client = Client.find(params[:client_id])
  end
end
