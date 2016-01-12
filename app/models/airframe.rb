class Airframe < ActiveRecord::Base
  LOCATION = ["Hangar","Maintenance","Storage"]
  CONDITION = ["Airworthy","Unsat","Foxtrot","Scrapped"]

  belongs_to :airframe_type
  belongs_to :squadron
end
