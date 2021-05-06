class FailedResult < ApplicationRecord
  with_options numericality: { equal_to: 3 } do
    validates :second_checker_id
  end
  belongs_to :second_checker
end
