class Pilot < ApplicationRecord
  PILOT_RANK = ["Recruit", "Acting Pilot Officer","Pilot Officer","Flying Officer","Flight Lieutenant","Squadron Leader","Wing Commander","Group Captain"]

  has_secure_password
  validates_confirmation_of :password
  belongs_to :squadron
  has_many :action_reports
  has_many :joining_forms, autosave: true, :inverse_of => :pilot, dependent: :destroy
  has_and_belongs_to_many :qualifications

  accepts_nested_attributes_for :joining_forms

  def fullname
    "#{name} - #{email}"
  end

  def hours
    self.action_reports.count(:hours)
  end

  def missions
    self.action_reports.count
  end

  def takeoffs
    self.action_reports.count(:takeoffs)
  end

  def landings
    self.action_reports.count(:landings)
  end

  def aa_kills
    self.action_reports.count(:aa_kills)
  end

  def ag_kills
    self.action_reports.count(:ag_kills)
  end
end
