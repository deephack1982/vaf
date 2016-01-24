class AirframeType < ActiveRecord::Base
  CATEGORY = ["Fixed Wing","Rotary Wing"]

  has_many :airframes

  def fullname
    "#{name} #{callsign}"
  end
end
