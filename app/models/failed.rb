class Failed < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :failed_reason
end
