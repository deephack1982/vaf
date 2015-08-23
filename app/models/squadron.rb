class Squadron < ActiveRecord::Base
  AIRCRAFT = ["A10c","Mig21bis"]

  has_many :pilots
end
