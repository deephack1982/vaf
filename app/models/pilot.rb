class Pilot < ActiveRecord::Base
  PILOT_RANK = ["Acting Pilot Officer","Pilot Officer","Flying Officer","Flight Lieutenant","Squadron Leader","Wing Commander","Group Captain"]

  belongs_to :squadron
  has_many :action_reports

  def fullname
    "#{name} - #{email}"
  end
end
