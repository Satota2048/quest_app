class QuestFailedResult < ApplicationRecord
  with_options numericality: { equal_to: 3 } do
    validates :second_checker_id
  end
end
