class Failed < ApplicationRecord
  belongs_to :user
  belongs_to :quest

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :failed_reason

  with_options numericality: { other_than: 1 } do
    validates :failed_reason_id
  end

  with_options presence: true do
    validates :failed_reason_id,:user,:quest
  end
end
