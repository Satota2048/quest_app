class Success < ApplicationRecord
  belongs_to :user
  belongs_to :quest

  with_options presence: true do
    validates :user,:quest
  end

  validate :success_limit_check

  # def success_limit_check
  #   if limit < Date.today
  #     errors.add(:limit, "-- 期限が切れています。失敗での登録をお願いします。")
  #   elsif limit = Date.today && limit_time < Time.now.to_s
  #     errors.add(:limit, "-- 期限が切れています。失敗での登録をお願いします。")
  #   end
  # end

end
