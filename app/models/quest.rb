class Quest < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  has_one :success
  has_one :failed

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :checker

  with_options presence: true do
    validates :category_id,:title,:explain,:limit,:user
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :checker_id
  end

  validate :date_before_start

  def date_before_start
    if limit <= Date.today && limit_time.blank?
      errors.add(:limit, "-- 期限は今日以降のものを選択してください")
    elsif limit == Date.today && limit_time < Time.now.to_s
      errors.add(:limit, "-- 当日中の期限は、現在時刻以降のものを選択してください")
    end
  end

end