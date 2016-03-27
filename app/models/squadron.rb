class Squadron < ActiveRecord::Base
  AIRCRAFT = ["A10C","Mig21bis","F15C"]

  has_many :pilots
  has_many :airframes
  belongs_to :airfield
end
