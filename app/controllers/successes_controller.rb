class SuccessesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params, only: [:index,:new]
  before_action :success_params, only: [:index,:new]

  def index
  end

  def new
  end

  def create
  end

  private
  def set_params
    @quest = Quest.find(params[:quest_id])
  end

  def success_params
    @success = Success.new
  end
end
