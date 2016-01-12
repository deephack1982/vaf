class AirframeType < ActiveRecord::Base
  CATEGORY = ["Fixed Wing","Rotary Wing"]

  has_many :airframes
end
