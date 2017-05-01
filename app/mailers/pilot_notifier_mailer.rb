class PilotNotifierMailer < ApplicationMailer
  def NewRecruit(pilot)
    @pilot = Pilot.find(pilot)
    mail(to: @pilot.email, subject: "Your application to VAF has been received")
  end

  def NewRecruitAdmin(pilot)
    @pilot = Pilot.find(pilot)
    Pilot.admins.each do |a|
      mail(to: a.email, subject: 'New recruit')
    end
  end

  def ActionReportClosed(actionReport)
    @pilot = Pilot.find(actionReport.pilot)
    @tasking = Tasking.find(actionReport.tasking)
    @mission = Mission.find(actionReport.tasking.mission)
    @action_report = ActionReport.find(actionReport)
    mail(to: @pilot.email, subject: "Action report for mission #{@mission.title} has been closed")
  end
end
