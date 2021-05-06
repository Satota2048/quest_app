class QuestSuccessResult < ApplicationRecord
  with_options numericality: { equal_to: 2 } do
    validates :second_checker_id
  end
end
