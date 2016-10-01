class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

    def authorise
      if session[:pilot_id].nil?
        redirect_to new_session_url, alert: "Not logged in"
      end
    end
end
