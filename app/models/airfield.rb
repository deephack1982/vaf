class Airfield < ApplicationRecord
  AIRFIELD_TYPE = ["Airfield","FOB"]

  has_many :squadrons
end
