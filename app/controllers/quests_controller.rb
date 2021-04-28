class QuestsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @quests = Quest.all.order("created_at DESC")
  end

  def new
    @quest = Quest.new
  end

  def create
    @quest = Quest.new(quest_params)
    if @quest.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def quest_params
    params.require(:quest).permit(:image,:category_id,:title,:explain,:limit,:achievement_purpose,:achievement_condition,
      :self_reward,:self_penalty,:order_condition,:detail_text,:user).merge(user_id: current_user.id)
  end

end
