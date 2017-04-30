class SessionsController < ApplicationController
  def new
  end

  def create
    pilot = Pilot.find_by_email(params[:email])
    if pilot && pilot.authenticate(params[:password])
      session[:pilot_id] = pilot.id
      if pilot.admin
        redirect_to root_url, notice: "Welcome back sir!"
      else
        redirect_to crew_room_index_url, notice: "Welcome back pilot!"
      end
    else
    flash[:alert] = "Email or password is invalid"
    render :new
    end
  end
  def destroy
    session[:pilot_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
end
