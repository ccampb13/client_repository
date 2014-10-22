class StakeholdersController < ApplicationController

  def new
    @stakeholder = Stakeholder.new
  end

  def create
    @stakeholder = Stakeholder.new(stakeholder_params)
    @stakeholder.save
    redirect_to root_path
  end

  def show
    @stakeholder = Stakeholder.find(params[:id])
  end

  def destroy
    @stakeholder = Stakeholder.find(params[:id])
    @stakeholder.destroy
    redirect_to root_path
  end

  protected

  def stakeholder_params
    params.require(:stakeholder).permit(:name)
  end
end
