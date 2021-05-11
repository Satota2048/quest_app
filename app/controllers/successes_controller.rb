class SuccessesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params, only: [:index,:new,:create]

  def index
  end

  def new
    @success = Success.new
  end

  def create
    @success = Success.new(success_params)
    if @success.save
      redirect_to root_path, notice: "おめでとうございます！ クエスト 『 #{@quest.title} 』を達成しました！！"
    else
      render :new
    end
  end

  private
  def set_params
    @quest = Quest.find(params[:quest_id])
  end

  def success_params
    params.require(:success).permit(:reason).merge(user_id: current_user.id,quest_id: params[:quest_id])
  end
end
