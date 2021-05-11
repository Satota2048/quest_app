class Success < ApplicationRecord
  belongs_to :user
  belongs_to :quest

  with_options presence: true do
    validates :user,:quest
  end

end
