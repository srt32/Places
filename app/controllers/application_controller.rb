class ApplicationController < ActionController::Base
	include ControllerYelp
	include CampusCalendar
	include TourSchedule
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => "Whoops, that's a no no."
  end

  def after_sign_in_path_for(resource)
 		user_trips_path(current_user)
	end
end
