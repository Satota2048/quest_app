class FailedsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params, only: [:index,:new,:create]

  def index
  end

  def new
    @failed = Failed.new
  end

  def create
    @failed = Failed.new(failed_params)
    if @failed.save
      redirect_to root_path, notice: "クエスト 『 #{@quest.title} 』 が失敗しました……"
    else
      render :new
    end
  end

  private
  def set_params
    @quest = Quest.find(params[:quest_id])
  end

  def failed_params
    params.require(:failed).permit(:failed_reason_id,:reason).merge(user_id: current_user.id,quest_id: params[:quest_id])
  end

end
