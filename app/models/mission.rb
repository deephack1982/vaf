class Mission < ActiveRecord::Base
  has_many :taskings
  has_many :action_reports, through: :taskings
end
