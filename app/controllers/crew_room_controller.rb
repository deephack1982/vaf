class CrewRoomController < ApplicationController
  before_action :set_pilot
  before_action :authorise, unless: "Rails.env.test?", except: [:new, :create]

  def index
  end

  def stores
  end

  def sierra_hotel
    @pilots_by_hours = Pilot.all.sort_by(&:hours).reverse!
    @pilots_by_ag = Pilot.all.sort_by(&:ag_kills).reverse!
    @pilots_by_aa = Pilot.all.sort_by(&:aa_kills).reverse!
  end

  def ready_room
  end

  def service_history
    @last_five_reports = ActionReport.where(pilot: @pilot).last(5).reverse
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pilot
    @pilot = Pilot.find(session[:pilot_id])
  end
end
