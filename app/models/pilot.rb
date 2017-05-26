class Pilot < ApplicationRecord
  PILOT_RANK = ["Recruit", "Acting Pilot Officer","Pilot Officer","Flying Officer","Flight Lieutenant","Squadron Leader","Wing Commander","Group Captain"]

  has_secure_password
  validates_confirmation_of :password
  belongs_to :squadron
  has_many :action_reports
  has_many :joining_forms, autosave: true, :inverse_of => :pilot, dependent: :destroy
  has_and_belongs_to_many :qualifications

  has_attached_file :profile_pic, styles: { small: "150x50", normal: "250x250" }, default_url: ->(attachment) { ActionController::Base.helpers.asset_path('default_pilot.jpg') }
  validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*\Z/

  accepts_nested_attributes_for :joining_forms

  scope :admins, -> { where(admin: 1) }

  scope :non_admin, -> { where(admin: 0) }

  def fullname
    "#{name} - #{email}"
  end

  def hours
    self.action_reports.sum(:hours)
  end

  def missions
    self.action_reports.count
  end

  def takeoffs
    self.action_reports.sum(:takeoffs)
  end

  def landings
    self.action_reports.sum(:landings)
  end

  def aa_kills
    self.action_reports.sum(:aa_kills)
  end

  def ag_kills
    self.action_reports.sum(:ag_kills)
  end
end
