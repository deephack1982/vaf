class Software < ApplicationRecord
  has_and_belongs_to_many :joining_forms, dependent: :destroy

  scope :is_required, -> { where(required: true) }
  scope :not_required, -> { where(required: false) }
end
