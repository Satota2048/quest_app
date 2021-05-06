class FailedResultsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params, only: [:index,:create]

  def index
  end

  def create
  end

  private
  def set_params
    @quest = Quest.find(params[:id])
  end
end
