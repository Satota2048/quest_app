class QuestsController < ApplicationController
  # インデックスはログインしていない場合の表示があるので除外
  before_action :authenticate_user!, except: :index
  before_action :set_params, only: [:show,:edit,:update,:destroy]
  before_action :check, only: [:edit,:destroy]
  before_action :list_params, only: [:yet_list,:doing_list,:success_list]

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

  def yet_list
  end

  def doing_list
  end

  def success_list
  end

  def update
    if @quest.update(quest_params)
      flash[:notice] = "クエスト『#{@quest.title}』が変更されました"
        redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    flash[:notice] = "クエスト『#{@quest.title}』が削除されました"
    @quest.destroy
    redirect_to root_path
  end

  private

  def quest_params
    params.require(:quest).permit(:image,:category_id,:title,:explain,:limit,:limit_time,:achievement_purpose,:achievement_condition,
      :self_reward,:self_penalty,:order_condition,:detail_text,:user,:checker_id).merge(user_id: current_user.id)
  end

  def set_params
    @quest = Quest.find(params[:id])
  end

  def list_params
    @quests = Quest.all.order("created_at DESC")
  end

  def check
    if current_user.id != @quest.user_id
      redirect_to root_path
    end
  end

end
