class Airframe < ActiveRecord::Base
  LOCATION = ["Hangar","Maintenance","Storage"]
  CONDITION = ["Airworthy","Unsat","Foxtrot","Scrapped"]

  scope :airworthy, -> { where(condition: 'Airworthy') }

  belongs_to :airframe_type
  belongs_to :squadron
  has_many :action_reports

  def fullname
    "#{tail_number} - #{condition} - #{airframe_type.name}"
  end
end
