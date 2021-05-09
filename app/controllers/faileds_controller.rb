class FailedsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params, only: [:index]
  before_action :failed_params, only: [:index]

  def index
  end

  def create
  end

  private
  def set_params
    @quest = Quest.find(params[:quest_id])
  end

  def failed_params
    @failed = Failed.new
  end
end
