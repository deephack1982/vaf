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
end
