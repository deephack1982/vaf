class Squadron < ActiveRecord::Base
  AIRCRAFT = ["A10C","Mig21bis","F15C"]

  has_many :pilots
  belongs_to :airfield
end
