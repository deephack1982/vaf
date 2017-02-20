class Tasking < ApplicationRecord
  TASK = ["CAP","Training","Intercept","QRA","CAS","Ground Attack"]

  belongs_to :mission
  belongs_to :airframe_type
  belongs_to :primary_base, :class_name => :Airfield, :foreign_key => 'primary_base_id'
  belongs_to :alternate_base, :class_name => :Airfield, :foreign_key => 'alternate_base'
  has_many :action_reports

  def fullname
    "#{callsign} - #{mission.title}"
  end
end
