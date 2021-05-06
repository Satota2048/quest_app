class Quest < ApplicationRecord

  belongs_to :user
  has_one_attached :image

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

end