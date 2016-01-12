class Airfield < ActiveRecord::Base
  AIRFIELD_TYPE = ["Airfield","FOB"]

  has_many :squadrons
end
