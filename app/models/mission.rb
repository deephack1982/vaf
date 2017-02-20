class Mission < ApplicationRecord
  has_many :taskings
  has_many :action_reports, through: :taskings
end
