class ActionReport < ActiveRecord::Base
  STATUS = ["Assigned","Closed","Cancelled"]
  OUTCOME = ["Success","Failure","Missing","Rescued","Killed"]

  belongs_to :pilot
  belongs_to :airframe
  belongs_to :tasking
  belongs_to :mission
end
