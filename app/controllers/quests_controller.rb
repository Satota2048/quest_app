class QuestsController < ApplicationController
  # インデックスはログインしていない場合の表示があるので除外
  before_action :authenticate_user!, except: :index
  before_action :set_params, only: [:show, :edit]
  before_action :check, only: :edit

  def index
    @quests = Quest.all.order("created_at DESC")
  end

  def new
    @quest = Quest.new
  end

  def create
    @quest = Quest.new(quest_params)
    if @quest.save
      redirect_to root_path, notice: "クエスト 『 #{@quest.title} 』 を登録しました！"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @quest.update(quest_params)
      redirect_to item_path(@quest.id)
    else
      render :edit
    end
  end

  private

  def quest_params
    params.require(:quest).permit(:image,:category_id,:title,:explain,:limit,:limit_time,:achievement_purpose,:achievement_condition,
      :self_reward,:self_penalty,:order_condition,:detail_text,:user,:checker_id).merge(user_id: current_user.id)
  end

  def set_params
    @quest = Quest.find(params[:id])
  end

  def check
    if current_user.id != @quest.user_id
      redirect_to root_path
    end
  end

end
