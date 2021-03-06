class ActionReport < ApplicationRecord
  STATUS = ["Assigned","Closed","Cancelled"]
  OUTCOME = ["Success","Failure","Missing","Rescued","Killed"]

  validates :hours, presence: true, unless: :closing_report?
  validates :takeoffs, presence: true, unless: :closing_report?
  validates :landings, presence: true, unless: :closing_report?


  after_commit  :update_airframe_hours, :if => :hours?

  belongs_to :pilot
  belongs_to :airframe
  belongs_to :tasking
  belongs_to :mission

  def fullname
    "#{self.tasking.callsign}#{self.position}"
  end

  private

  def update_airframe_hours
    self.airframe.hours = self.airframe.hours + self.hours
    self.airframe.save
  end

  def closing_report?
    outcome.nil?
  end
end
